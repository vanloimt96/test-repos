<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8-bom">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<script src="app.js">  </script>
  </head>
 <body ng-app="validationApp" ng-controller="mainController">
	<div class="container" >
	  <form name="userform" ng-submit="submitform(userform.$valid)" novalidate>
		<div ng-class="{ 'has-error' : userform.email.$invalid && !userform.email.$pristine }">
		  <label > Email: </label>
			<input type="email" name="email" ng-model="user.email" required>
			<p ng-show="userform.email.$invalid && !userform.email.$pristine" class="help-block"> Nhap vao email cua ban. </p>
		</div>
		<div  ng-class="{ 'has-error' : userform.password.$invalid && !userform.password.$pristine }">
		  <label>Mật Khẩu:</label>
		  <div >          
			<input type="password"  ng-model="user.password"  ng-minlength="6"
									ng-maxlength="20"  ng-pattern="/^[a-zA-Z]+$/" required>
			<p ng-show="userform.password.$error.minlength" class="help-block">Mật khẩu quá ngắn.</p>
			<p ng-show="userform.password.$error.maxlength" class="help-block">Mật khẩu quá dài.</p>
		  </div>
		</div>     
		  <div>
			<button type="submit" ng-disabled="userform.$invalid"> Submit </button>
		  </div>
	  </form>
	</div>
 </body>
 <html>
