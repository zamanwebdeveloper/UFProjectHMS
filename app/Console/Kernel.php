<?php

namespace App\Console;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;


class Kernel extends ConsoleKernel
{

    protected $commands = [
        \App\Console\Commands\WardBed::class,
    ];


    protected function schedule(Schedule $schedule)
    {
        $schedule->command('ward:bed')->cron('0 */23 * * *');
    }

    protected function commands()
    {
        require base_path('routes/console.php');
    }

}
