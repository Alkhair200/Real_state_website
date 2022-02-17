<?php

namespace App\Classes\AllBuilding;

use App\Models\Admin\Building;

class BuildingWelcome
{
    public function welcome()
    {
        $bu = Building::active()->take(4)->get();
        $result = Building::active()->orderBy('created_at' , 'desc')->skip(1)->take(3)->get();

        $firstBu = dataFilter($result);

        $lastBu = Building::active()->orderBy('created_at' , 'desc')->take(6)->get();

        return view('index' , compact('bu','lastBu','firstBu'));
    }
}
