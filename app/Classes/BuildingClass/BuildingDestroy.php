<?php

namespace App\Classes\BuildingClass;

use Illuminate\Support\Facades\Storage;

class BuildingDestroy
{
    public function destroy($building)
    {
        try {

            if ($building->bu_image != 'default.jpg') {

                Storage::disk('public_uploads')->delete('/img/' .$building->bu_image);
            }

            $building->delete();

            session()->flash('success',__('site.deleted_successfully'));

            return redirect()->route('building.index');

        } catch (\Throwable $th) {

            return $th;
        }
    }
}
