a:78:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"Seeders Laravel";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:33;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Introduction";}i:2;i:35;}i:6;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:47;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:49;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:49;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:324:"Laravel includes the ability to seed your database with test data using seed classes. All seed classes are stored in the `database/seeders` directory. By default, a `DatabaseSeeder` class is defined for you. From this class, you may use the `call` method to run other seed classes, allowing you to control the seeding order.";}i:2;i:52;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:376;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:376;}i:12;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:380;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"Writing Seeders";}i:2;i:382;}i:14;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:397;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:399;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:399;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:153:"To generate a seeder, execute the `make:seeder` Artisan command. All seeders generated by the framework will be placed in the database/seeders directory:";}i:2;i:402;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:555;}i:19;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:34:"php artisan make:seeder UserSeeder";i:1;N;i:2;N;}i:2;i:562;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:562;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:305:"A seeder class only contains one method by default: `run`. This method is called when the `db:seed` Artisan command is executed. Within the `run` method, you may insert data into your database however you wish. You may use the query builder to manually insert data or you may use Eloquent model factories.";}i:2;i:606;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:911;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:911;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:115:"As an example, let's modify the default DatabaseSeeder class and add a database insert statement to the run method:";}i:2;i:913;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1028;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:515:"
<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeders.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => Str::random(10),
            'email' => Str::random(10).'@gmail.com',
            'password' => Hash::make('password'),
        ]);
    }
}
";i:1;N;i:2;N;}i:2;i:1035;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1035;}i:28;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1561;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Using Model Factories";}i:2;i:1563;}i:30;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1584;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1586;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1586;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:262:"Of course, manually specifying the attributes for each model seed is cumbersome. Instead, you can use model factories to conveniently generate large amounts of database records. First, review the model factory documentation to learn how to define your factories.";}i:2;i:1588;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1850;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1850;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"For example, let's create 50 users that each have one related post:";}i:2;i:1852;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1919;}i:38;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:199:"
use App\Models\User;

/**
 * Run the database seeders.
 *
 * @return void
 */
public function run()
{
    User::factory()
            ->times(50)
            ->hasPosts(1)
            ->create();
}
";i:1;N;i:2;N;}i:2;i:1927;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1927;}i:40;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2136;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"Calling Additional Seeders";}i:2;i:2138;}i:42;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2164;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2166;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2166;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:315:"Within the `DatabaseSeeder` class, you may use the `call` method to execute additional seed classes. Using the call method allows you to break up your database seeding into multiple files so that no single seeder class becomes too large. The `call` method accepts an array of seeder classes that should be executed:";}i:2;i:2168;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2489;}i:47;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:193:"
/**
 * Run the database seeders.
 *
 * @return void
 */
public function run()
{
    $this->call([
        UserSeeder::class,
        PostSeeder::class,
        CommentSeeder::class,
    ]);
}
";i:1;N;i:2;N;}i:2;i:2489;}i:48;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2489;}i:49;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2692;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"Running Seeders";}i:2;i:2694;}i:51;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2709;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2711;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2711;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:223:"You may execute the `db:seed` Artisan command to seed your database. By default, the `db:seed` command runs the `Database\Seeders\DatabaseSeeder` class, which may in turn invoke other seed classes. However, you may use the ";}i:2;i:2713;}i:55;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2936;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:"class option to specify a specific seeder class to run individually:";}i:2;i:2938;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3006;}i:58;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:61:"
php artisan db:seed

php artisan db:seed --class=UserSeeder
";i:1;N;i:2;N;}i:2;i:3013;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3013;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"You may also seed your database using the `migrate:fresh` command in combination with the `";}i:2;i:3084;}i:61;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3175;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:140:"seed` option, which will drop all tables and re-run all of your migrations. This command is useful for completely re-building your database:";}i:2;i:3177;}i:63;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3317;}i:64;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:34:"
php artisan migrate:fresh --seed
";i:1;N;i:2;N;}i:2;i:3324;}i:65;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3324;}i:66;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:3368;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Forcing Seeders To Run In Production";}i:2;i:3370;}i:68;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:3406;}i:69;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3408;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3408;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:307:"Some seeding operations may cause you to alter or lose data. In order to protect you from running seeding commands against your production database, you will be prompted for confirmation before the seeders are executed in the `production` environment. To force the seeders to run without a prompt, use the `";}i:2;i:3410;}i:72;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3717;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"force` flag:";}i:2;i:3719;}i:74;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3731;}i:75;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:27:"php artisan db:seed --force";i:1;N;i:2;N;}i:2;i:3738;}i:76;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3773;}i:77;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3773;}}