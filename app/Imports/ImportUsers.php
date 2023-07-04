<?php

namespace App\Imports;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\ToModel;


class ImportUsers implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Product([
       
            "name"=>"$row[0]",
                "price"=>"$row[1]",
                "description"=>"$row[2]",
                "category"=>"$row[3]",
                "gallery"=>"$row[4]"
       
        ]);
    }
}