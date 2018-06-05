@extends('layouts.master')


@section('content')

<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			@if(Sentinel::check())
				Welcome, {{$uname}}
			@else
				{{$header}}
			@endif
			<hr>
		</div>
	</div>
</div>

@endsection

