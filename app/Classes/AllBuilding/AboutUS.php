<?php

namespace App\Classes\AllBuilding;

use App\Models\Admin\Building;

class AboutUS
{
    public function aboutUs()
    {
        $lastBu = Building::active()->orderBy('created_at' , 'desc')->take(6)->get();
        return view('front.bu.about-us' ,compact('lastBu'));
    }
}
