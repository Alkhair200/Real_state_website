<?php

namespace App\Classes\AllBuilding;

class ByRent
{
    public function byRent()
    {
        $buAll = returnResultBy('bu_rent' , 'إيجار');

        return view('front.bu.all' ,compact('buAll'));
    }
}
