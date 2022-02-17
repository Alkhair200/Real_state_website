<?php

namespace App\Classes\AllBuilding;

use App\Models\Admin\Building;

class Search
{
    public function search($request)
    {

        $request_data = $request->except(['_token' , '_method','page']);

        $query = Building::select('*');

        $count = count($request_data);

        $i = 0;

        foreach ($request_data as $key => $value) {

            $i ++;

            if ($value != "") {

                if ($key == 'bu_price_from' && $request->bu_price_to == '') {

                    $query->where('bu_price' , '>=' , $value);

                } elseif ($key == 'bu_price_to' && $request->bu_price__from == '') {

                    $query->where('bu_price' , '<=' , $value);

                } else {

                    if ($key != 'bu_price_from' && $key != 'bu_price_to') {

                        $query->where($key , $value);

                    }

                }

            }elseif ($count == $i && $request->bu_price_to != "" && $request->bu_price__from != "") {

                $query->whereBetween('bu_price',[$request->bu_price__from , $request->bu_price_to])->get();
            }

        }

        $data = $query->paginate(PAGINATION_COUNT);

        $buAll = dataFilter($data);

        return view('front.bu.all' ,compact('buAll'));
    }
}
