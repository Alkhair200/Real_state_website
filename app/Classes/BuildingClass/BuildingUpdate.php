<?php

namespace App\Classes\BuildingClass;

use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;

class BuildingUpdate
{
    public function update($request,$building)
    {

        $request_data = $request->all();

        if ($request->bu_image) {

            if ($request->bu_image != 'default.jpg') {

                Storage::disk('public_uploads')->delete('/img/' .$building->bu_image);

                Image::make($request->bu_image)->resize(800, 700)->save(public_path('uploads/img/' .$request->bu_image->hashName()));

                $request_data['bu_image'] = $request->bu_image->hashName();
            }
        }

        try {
            $building->update($request_data);

            session()->flash('success',__('site.updated_successfully'));

            return redirect()->route('building.index');

        } catch (\Throwable $th) {

            return $th;
        }
    }
}
