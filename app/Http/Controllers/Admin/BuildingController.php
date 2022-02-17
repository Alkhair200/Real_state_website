<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\BuUpdateRequest;
use App\Models\Admin\Building;
use App\Models\User;
use App\Repository\BuildingRepository;
use Illuminate\Http\Request;
use App\Http\Requests\BuRequest;

class BuildingController extends Controller
{
    private $building;

    public function __construct()
    {
        $this->building = new BuildingRepository();
    }

    public function index(Request $request)
    {
        return $this->building->index($request);
    }


    public function create()
    {
        return view('dashboard.building.create');
    }

    public function store(BuRequest $request)

    {
        return $this->building->store($request);
    }

    // public function show(Building $building)
    // {
    //     //
    // }

    public function edit(Building $building , User $user)
    {
        return $this->building->edit($building ,$user);
    }

    public function update(BuUpdateRequest $request, Building $building)
    {
        return $this->building->update($request ,$building);
    }

    public function destroy(Building $building)
    {
        return $this->building->destroy($building);
    } // end of destroy

}
