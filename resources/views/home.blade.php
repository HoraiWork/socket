@extends('layouts.app')

@section('content')
{{-- <chat auth-user="{{Auth::user()->id}}"></chat> --}}


<div class="container-fluid">

    <chats :user="{{ auth()->user() }}"></chats>

</div>

@endsection
