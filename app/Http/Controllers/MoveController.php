<?php

namespace App\Http\Controllers;

use App\User;
use App\Resize;
use App\Events\MoveEvent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redis;

class MoveController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {

        return view('move');
    }

    public function usersList()
    {
        $resize = Resize::all();

        return $resize;
    }


    public function newListUser(Request $request)
    {
        $data = $request->all();
        $user = User::find($data['user']);
        // $redis = Redis::connection();
        // $redis->set(json_encode(now()), json_encode(now()));
        // $cache = $redis->del('*');
        // $cache = $redis->keys('*');

        event(new MoveEvent($data['text']));



    }
}
