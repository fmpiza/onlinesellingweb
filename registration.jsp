<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
				<title>registration</title>
				</head>
			<body>
		<h1><center><font color="purple"><div class="card text-white bg-dark mb-3" style="max-width: 100rem;">
			<div class="card-header"><b><font color="orange">REGISTRATION FORM</font></b>
			<p>		<center><div class="card text-white bg-info mb-3" style="max-width: 50rem;">
			<div class="card-body">
		<h5 class="card-title"><form action="pagecontext.jsp">

			<div class="form-group row">
			 <label for="fullname" class="col-sm-2 col-form-label">Full
			  Name</label>
			 <div class="col-sm-7">
			  <input type="text" class="form-control" name="fullname"
			   placeholder="Enter your full name">
			 </div>
			</div>

			<div class=" form-group row">
			 <label for="username" class="col-sm-2 col-form-label">Username</label>
			 <div class="col-sm-7">
			  <input type="text" class="form-control" name="username"
			   placeholder="Enter user name">
			 </div>
			</div>
	   
			<div class="form-group row">
			 <label for="password" class="col-sm-2 col-form-label">Password</label>
			 <div class="col-sm-7">
			  <input type="password" class="form-control" name="password"
			   placeholder="Enter Password">
			 </div>
			</div>
			<div class="form-group row">
				<label for="confirmpass" class="col-sm-2 col-form-label">Re-enter Password</label>
				<div class="col-sm-7">
				 <input type="password" class="form-control" name="confirmpass"
				  placeholder="Confirm Password">
				</div>
			   </div>
	   
			<div class="form-group row">
			 <label for="email" class="col-sm-2 col-form-label">Email</label>
			 <div class="col-sm-7">
			  <input type="text" class="form-control" name="email"
			   placeholder="Enter Email">
			 </div>
			</div>
	   
			<div class=" form-group row">
				<label for="countryname" class="col-sm-2 col-form-label">Country</label>
				<div class="col-sm-7">
				 <input type="text" class="form-control" name="countryname"
				  placeholder="Enter your Country name">
				</div>
			   </div>
			   <p><div class="input-group mb-2">
				<div class="input-group-prepend">
					</div>
					<select name="product">
				<option selected>Product...</option>
				<option value="Laptop">Laptop</option>
				<option value="Tablet">Tablet</option>
				<option value="Pointing devices">Pointing devices</option>
					</select>
			</div></p>
			   <p><div class="input-group mb-3">
				<div class="input-group-prepend">
				</div>
                <select name="meansofpayment">
				<option selected>Means of payment...</option>
				<option value="Western Union">Western Union</option>
				<option value="VISA Card">VISA Card</option>
				<option value="Tigo Pesa">Tigo Pesa</option>
				<option value="Airtel Money">Airtel Money</option>
				<option value="M-Pesa">M-Pesa</option>
			</select>
				
		</div></p>
	   
			<button type="submit" class="btn btn-primary">Submit</button>
		   </form>
			</script></center></p>
		</div>
			</div>
		</body>
	</div>
</html>