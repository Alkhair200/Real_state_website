<?php

namespace App\Interfaces;

interface AllBuildingInterface
{
    public function welcome();
    public function showAllEnable();
    public function forRent($request);
    public function byRent();
    public function showType($type);
    public function search($request);
    public function singleBuilding($id ,$building);
    public function gitAjax($request ,$building);
    public function aboutUs();
}
