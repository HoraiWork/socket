@extends('layouts.app')

@section('content')
<div class="container">
   <socket :user="{{ auth()->user() }}"></socket>
</div>

@endsection
