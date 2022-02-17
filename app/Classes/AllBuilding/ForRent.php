<?php

namespace App\Classes\AllBuilding;

use App\Models\Admin\Building;

class ForRent
{
    public function forRend($request)
    {
        foreach ($request->except(['_token']) as $key => $value) {
            $result = $key;
        }
        $buAll = Building::active()->where('bu_rent' , $result)->orderBy('id' , 'desc')->paginate(PAGINATION_COUNT);

        $buAll = dataFilter($buAll);

        return view('front.bu.all' ,compact('buAll'));
    }
}
