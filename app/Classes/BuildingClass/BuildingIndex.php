<?php

namespace App\Classes\BuildingClass;

use App\Models\Admin\Building;

class BuildingIndex
{
    public function index($request)
    {
        try {

            $id = $request->id;

            if ($id) {

                $building = Building::where('user_id' ,$request->id)->when($request->search , function($query) use($request){

                    return $query->where('bu_name' , 'like' , '%' .$request->search . '%')
                        ->orWhere('bu_rent' , 'like' , '%' .$request->search. '%');

                })->latest()->paginate(PAGINATION_COUNT);

                return view('dashboard.building.index' ,compact('building','id'));
            }


            $building = Building::when($request->search , function($query) use($request){

                return $query->where('bu_name' , 'like' , '%' .$request->search . '%')
                    ->orWhere('bu_rent' , 'like' , '%' .$request->search. '%');

            })->latest()->paginate(PAGINATION_COUNT);

            return view('dashboard.building.index' ,compact('building'));

        } catch (\Throwable $th) {

            return $th;
        }
    }
}
