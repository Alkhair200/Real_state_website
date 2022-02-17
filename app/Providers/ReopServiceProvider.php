<?php

namespace App\Providers;

use App\Interfaces\BuildingInterface;
use App\Repository\BuildingRepository;
use Illuminate\Support\ServiceProvider;

class ReopServiceProvider extends ServiceProvider
{

    public function register()
    {
        $this->app->bind(BuildingRepository::class,BuildingInterface::class);
    }

    public function boot()
    {
        //
    }
}
