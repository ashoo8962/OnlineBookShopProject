<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 10px; background-color: #00796b"></div>


<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fa-solid fa-book"></i> E-Book
			</h3>
		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
		<c:if test="${not empty userobj }">
		<div class="col-md-3">
		
		<a href="checkout.jsp"><i class="fas fa-cart-plus fa-2x mr-2"></i></a>
		
			<a href="login.jsp" class="btn btn-success"> ${userobj.name } </a> <a
				href="logout" class="btn btn-primary text-white">Logout</a>
		</div>
		</c:if>
		
	<c:if test="${empty userobj}">
		
		<div class="col-md-3">
			<a href="login.jsp" class="btn btn-success">Login </a> <a
				href="" class="btn btn-primary text-white">Register</a>
		</div>
		
		
		
		</c:if>
		
		

	</div>



</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp"><i
					class="fas fa-home"></i> Home <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item active"><a class="nav-link"
				href="all_recent_book.jsp"><i class="fa-light fa-book-open"></i>
					Recent Book</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="all_new_book.jsp"><i class="fa-light fa-book-open"></i>
					New Book</a></li>

			<li class="nav-item active"><a class="nav-link disabled"
				href="all_old_book.jsp"><i class="fa-light fa-book-open"></i>
					OldBook</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fas fa-cog"></i> Setting
			</button>

			<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fa-light fa-address-book"></i> Contact Us
			</button>
		</form>
	</div>
</nav>