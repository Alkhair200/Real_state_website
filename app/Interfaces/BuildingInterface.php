<?php

namespace App\Interfaces;

interface BuildingInterface
{
    public function index($request);
    public function store($request);
    public function edit($building ,$user);
    public function update($request, $building);
    public function destroy($building);

}
