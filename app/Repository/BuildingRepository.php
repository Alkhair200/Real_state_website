<?php

namespace App\Repository;

use App\Classes\BuildingClass\BuildingDestroy;
use App\Classes\BuildingClass\BuildingEdit;
use App\Classes\BuildingClass\BuildingIndex;
use App\Classes\BuildingClass\BuildingStore;
use App\Classes\BuildingClass\BuildingUpdate;
use App\Interfaces\BuildingInterface;

class BuildingRepository implements BuildingInterface
{
    /**
     * @var BuildingInterface
     */
    private $buildingIndex,
$buildingStore,
$buildingEdit,
$buildingUpdate,
$buildingDestroy;

    public function __construct()
    {
        $this->buildingIndex = new BuildingIndex();
        $this->buildingStore = new BuildingStore();
        $this->buildingEdit = new BuildingEdit();
        $this->buildingUpdate = new BuildingUpdate();
        $this->buildingDestroy = new BuildingDestroy();
    }

    public function index($request)
    {
        return $this->buildingIndex->index($request);
    }

    public function store($request)
    {
        return $this->buildingStore->store($request);
    }

    public function edit($building, $user)
    {
        return $this->buildingEdit->edit($building , $user);
    }

    public function update($request, $building)
    {
        return $this->buildingUpdate->update($request , $building);
    }

    public function destroy($building)
    {
        return $this->buildingDestroy->destroy($building);
    }

}
