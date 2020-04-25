<?php

namespace App\Listeners;

use App\Events\MoveEvent;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class MoveObject
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  MoveEvent  $event
     * @return void
     */
    public function handle(MoveEvent $event)
    {
        //
    }
}
