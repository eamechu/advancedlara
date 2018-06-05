@extends('layouts.master')


@section('content')
	<div class="row">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="panel-title">
						<h3>Reports</h3>
					</div>
				</div>

				<div class="panel-body">
						<h2>Striped Table</h2>
						  <p>The .table-striped class adds borders to a table:</p>            
						  <table class="table table-striped">
						    <thead>
						      <tr>
						        <th>Firstname</th>
						        <th>Lastname</th>
						        <th>Email</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr>
						        <td>John</td>
						        <td>Doe</td>
						        <td>john@example.com</td>
						      </tr>
						      <tr>
						        <td>Mary</td>
						        <td>Moe</td>
						        <td>mary@example.com</td>
						      </tr>
						      <tr>
						        <td>July</td>
						        <td>Dooley</td>
						        <td>july@example.com</td>
						      </tr>
						    </tbody>
						  </table>
				</div>
			</div>
	</div>

@endsection

