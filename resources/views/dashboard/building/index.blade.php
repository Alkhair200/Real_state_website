@extends('layouts.dashboard.app')
@section('content')
    <div class="content-wrapper">
        <section class='content-header'>
            <h1>@lang('site.building')</h1>
            <ol class="breadcrumb">
                <li><a href="{{ route('adminbanel') }}"><i class="fa fa-dashboard"></i>@lang('site.dashboard')</a></li>
                <li class="active">@lang('site.building')</li>
            </ol>
        </section>
        <section class="content">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title" style="margin-bottom: 15px">@lang('site.bu_control')<small
                            style="color: #f03">{{ ' ' . $building->total() }}</small></h3>

                    <form action="                                                           
                                                                                                                                             
                    @if (isset($id))
                        {{ route('building', $id) }}
                    @else
                        {{ route('building') }} @endif" method="GET">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="input-group">
                                    <input type="text" name="search" class="form-control"
                                        value="{{ request()->search }}" placeholder="@lang('site.search')">
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-primary btn-flat">@lang('site.search')</button>
                                    </span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <a href="{{ route('building.create') }}" class="btn btn-primary"><i
                                        class="fa fa-plus"></i>@lang('site.add')</a>

                                <a href="{{-- route('building.create') --}}" id="btn-delete-all" class="btn btn-danger"><i
                                        class="fa fa-trash"></i>@lang('site.delete_all')</a>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="box-body">

                    @if (isset($building) && $building->count() > 0)
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>
                                        <label>
                                            <input type="checkbox" name="select_all" onclick="checkAll('box1' ,this)">
                                        </label>
                                    </th>
                                    <th>#</th>
                                    <th>@lang('site.bu_name')</th>
                                    <th>@lang('site.bu_place')</th>
                                    <th>@lang('site.bu_price')</th>
                                    <th>@lang('site.bu_type')</th>
                                    <th>@lang('site.bu_status')</th>
                                    <th>@lang('site.bu_image')</th>
                                    <th>@lang('site.bu_date')</th>
                                    <th>@lang('site.bu_control')</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($building as $index => $bu)
                                    <tr>
                                        <td>
                                            <label>
                                                <input type="checkbox" value="{{ $bu->id }}" class="box1">
                                            </label>
                                        </td>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $bu->bu_name }}</td>
                                        <td>{{ $bu->bu_place }}</td>
                                        <td>{{ $bu->bu_price }}</td>
                                        <td>{{ $bu->getType() }}</td>
                                        <td>{{ $bu->getStatusbu() }}</td>
                                        <td><img src="{{ $bu->image_path }}" alt="No image available"
                                                style="width: 100px" class="img-thumbnail"></td>

                                        <td>{{ $bu->created_at->toFormattedDateString() }}</td>

                                        <td>
                                            <a href="{{ route('building.edit', $bu->id) }}"
                                                class="btn btn-info btn-sm"><i
                                                    class="fa fa-edit"></i>@lang('site.edit')</a>

                                            <form method="post" action="{{ route('building.destroy', $bu->id) }}"
                                                style="display: inline-block">
                                                @csrf
                                                {{ method_field('delete') }}

                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-danger delete btn-sm"><i
                                                            class="fa fa-trash"></i>@lang('site.delete')</button>
                                                </div>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="content-center">
                            {{ $building->appends(request()->query())->links() }}
                        </div>
                    @else
                        <h2> @lang('site.no_data_found')</h2>
                    @endif
                </div>
            </div>
        </section>
    </div>
@endsection

@section('scripts')
    <script>
        function checkAll(className, elem) {

            var elements = document.getElementsByClassName(className);
            var l = elements.length;

            if (elem.checked) {

                for (let i = 0; i < l; i++) {

                    elements[i].checked = true;

                }

            } else {

                for (let i = 0; i < l; i++) {

                    elements[i].checked = false;

                }

            }
        }

        //delete
        $('#btn-delete-all').click(function(e) {

            var that = $(this)

            e.preventDefault();

            var selected = new Array();

            $("table input[type=checkbox]:checked").each(function() {
                selected.push(this.value);

                if (selected.length > 0) {

                    var n = new Noty({
                        text: "@lang('site.confirm_delete')",
                        type: "warning",
                        killer: true,
                        buttons: [
                            Noty.button("@lang('site.yes')", 'btn btn-success mr-2',
                                function() {
                                    that.closest('form').submit();
                                }),

                            Noty.button("@lang('site.no')", 'btn btn-primary mr-2', function() {
                                n.close();
                            })
                        ]
                    });

                    n.show();

                    // $('input[id='delete_all_id']').val(selected);

                }

            });



        }); //end of delete
    </script>
@endsection
