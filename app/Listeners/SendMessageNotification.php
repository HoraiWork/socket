<?php

namespace App\Listeners;

use App\Events\WebsocketEvent;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendMessageNotification
{
    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

    /**
     * Handle the event.
     *
     * @param  WebsocketEvent  $event
     * @return void
     */
    public function handle(WebsocketEvent $event)
    {
        // $event->user_name;
        // $event->article_name;

        // info([$event->user]);
        // info([$event->user->name]);
        // info([$event->user->email]);
    }
}
