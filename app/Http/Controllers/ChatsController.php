<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Message;
use App\Events\WebsocketEvent;

class ChatsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('home');
    }

    public function fetchMessages()
    {
        return Message::with('user')
        ->limit(20)
        ->get();
    }

    public function sendMessage(Request $request)
    {
        $message = auth()->user()->messages()->create([
            'message' => $request->message
        ]);

          broadcast(new WebsocketEvent($message->load('user')))->toOthers();

        return ['status' => 'success'];
    }
}
