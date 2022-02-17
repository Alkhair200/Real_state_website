<?php

namespace App\Classes\BuildingClass;

class BuildingEdit
{
    public function edit($building ,$user)
    {
        $user_data = $user->where('id' , $building->user_id)->get();

        $user_info = $user_data->transform(function($value , $key){

            $data = [];
            $data['name'] = $value['name'];
            $data['email'] = $value['email'];

            return $data;
        });

        return view('dashboard.building.edit' , compact('building' ,'user_info'));
    }
}
