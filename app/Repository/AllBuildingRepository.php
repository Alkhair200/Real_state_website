<?php

namespace App\Repository;

use App\Classes\AllBuilding\AboutUS;
use App\Classes\AllBuilding\AllEnable;
use App\Classes\AllBuilding\BuildingWelcome;
use App\Classes\AllBuilding\ByRent;
use App\Classes\AllBuilding\ForRent;
use App\Classes\AllBuilding\GitAjax;
use App\Classes\AllBuilding\Search;
use App\Classes\AllBuilding\ShowType;
use App\Classes\AllBuilding\SingleBuilding;
use App\Interfaces\AllBuildingInterface;

class AllBuildingRepository implements AllBuildingInterface
{
    private
    $buildingWelcome,
    $all_Enable,
    $for_rent,
    $by_rent,
    $show_type,
    $search,
    $single,
    $git_ajax,
    $about;
    public function __construct()
    {
        $this->buildingWelcome = new BuildingWelcome();
        $this->all_Enable = new AllEnable();
        $this->for_rent = new ForRent();
        $this->by_rent = new ByRent();
        $this->show_type = new ShowType();
        $this->search = new Search();
        $this->single = new SingleBuilding();
        $this->git_ajax = new GitAjax();
        $this->about = new AboutUS();
    }

    public function welcome()
    {
        return $this->buildingWelcome->welcome();
    }

    public function showAllEnable()
    {
        return $this->all_Enable->allEnable();
    }

    public function forRent($request)
    {
        return $this->for_rent->forRend($request);
    }

    public function byRent()
    {
        return $this->by_rent->byRent();
    }

    public function showType($type)
    {
        return $this->show_type->showType($type);
    }

    public function search($request)
    {
        return $this->search->search($request);
    }

    public function singleBuilding($id, $building)
    {
        return $this->single->singleBuilding($id ,$building);
    }

    public function gitAjax($request, $building)
    {
        return $this->git_ajax->gitAjax($request, $building);
    }

    public function aboutUs()
    {
        return $this->about->aboutUs();
    }
}
