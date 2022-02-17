<?php

namespace App\Classes\AllBuilding;

use App\Models\Admin\Building;

class AllEnable
{
    public function allEnable()
    {
        $data = Building::active()->orderBy('id' , 'desc')->paginate(PAGINATION_COUNT);

        $buAll = dataFilter($data);

        return view('front.bu.all' ,compact('buAll'));
    }
}
