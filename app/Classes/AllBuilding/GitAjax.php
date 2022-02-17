<?php

namespace App\Classes\AllBuilding;

use Illuminate\Support\Str;

class GitAjax
{
    public function gitAjax($request ,$building)
    {
        $data =  $building->find($request->id);

        $data->bu_smail_dis = Str::limit($data->bu_smail_dis , 160);

        return $data->toJson();
    }
}
