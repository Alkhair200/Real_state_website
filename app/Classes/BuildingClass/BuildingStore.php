<?php

namespace App\Classes\BuildingClass;

use App\Models\Admin\Building;
use Illuminate\Support\Facades\Auth;
use Intervention\Image\ImageManagerStatic as Image;

class BuildingStore
{

    public function store($request)
    {

        $request_data = $request->all();

        $user = Auth::user()->id;

            Image::make($request->bu_image)->resize(800, 700)->save(public_path('uploads/img/' .$request->bu_image->hashName()));

            $request_data['bu_image'] = $request->bu_image->hashName();

        try {

            $data = [
                'bu_name'     => $request_data['bu_name'],
                'bu_place'     => $request_data['bu_place'],
                'bu_square'   => $request_data['bu_square'],
                'rooms'       => $request_data['rooms'],
                'bu_price'    => $request_data['bu_price'],
                'bu_rent'     => $request_data['bu_rent'],
                'bu_type'     => $request_data['bu_type'],
                'bu_smail_dis'=> $request_data['bu_smail_dis'],
                'bu_larg_dis' => $request_data['bu_larg_dis'],
                'bu_meta'     => $request_data['bu_meta'],
                'bu_langtude' => $request_data['bu_langtude'],
                'bu_latitude' => $request_data['bu_latitude'],
                'bu_status'   => $request_data['bu_status'],
                'user_id'     => $user,
                'month' => date('m'),
                'year' => date('Y'),
            ];
            Building::create($data);

            session()->flash('success',__('site.created_successfully'));

            return redirect()->route('building.index');

        } catch (\Throwable $th) {

            return $th;
        }
    }
}
