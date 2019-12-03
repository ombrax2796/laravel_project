<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\User::class, 10)->create()->each(function ($user){
            $user ->assignRole('admin');
        });
        factory(App\User::class, 15)->create()->each(function ($user){
            $user ->assignRole('modo');
        });
        factory(App\User::class, 100)->create()->each(function ($user){
            $user ->assignRole('user');
        });
    }
}
