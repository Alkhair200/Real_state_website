<?php

namespace App\Classes\AllBuilding;

class SingleBuilding
{
    public function singleBuilding($id ,$building)
    {

        $buInfo = $building->where('id', $id)->get();

        if ($buInfo->count() < 1) {

            return view('front.bu.error');

        }

        foreach ($buInfo as $key => $value) {

            $data = $value;
        }

        if ($data->bu_status == 0) {

            $messageBody = "العقار $data->bu_name في إنتظار موافقة الإدرة يتم نشر العقار خلال 24 ساعة وشكراً ";

            return view('front.bu.nopermision', compact('messageBody'));

        }

        $sentBuRent = $building->where('bu_rent' ,$data->bu_rent)->take(3)->get();
        $sentBuType = $building->where('bu_type' ,$data->bu_type)->take(3)->get();

        return view('front.bu.singleBu',
            compact('buInfo' ,'sentBuRent' ,'sentBuType'));
    }
}
