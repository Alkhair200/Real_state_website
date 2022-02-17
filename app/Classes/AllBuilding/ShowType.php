<?php

namespace App\Classes\AllBuilding;

class ShowType
{
    public function showType($type)
    {
        $buAll = returnResultBy('bu_type' , $type);

        return view('front.bu.all' ,compact('buAll'));
    }

}
