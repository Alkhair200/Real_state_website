<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Repository\AllBuildingRepository;
use Illuminate\Http\Request;
use App\Models\Admin\Building;

class BuAllController extends Controller
{

    private $allBuilding;

    public function __construct()
    {
        $this->allBuilding = new AllBuildingRepository();
    }

    public function welcome()
    {
        return $this->allBuilding->welcome();
    }

    function showAllEnable()
    {
        return $this->allBuilding->showAllEnable();
    }

    public function forRent(Request $request)
    {
        return $this->allBuilding->forRent($request);
    }

    public function byRent()
    {
        return $this->allBuilding->byRent();
    }

    public function showType($type)
    {
        return $this->allBuilding->showType($type);
    }

    public function search(Request $request)
    {
        return $this->allBuilding->search($request);
    }

    function singleBuilding($id , Building $building)
    {
        return $this->allBuilding->singleBuilding($id ,$building);
    }

    public function getAjaxInfo(Request $request , Building $building)
    {
        return $this->allBuilding->gitAjax($request ,$building);
    }

    public function aboutUs()
    {
        return $this->allBuilding->aboutUs();
    }
}
