<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Listado de usuarios</title>
<link rel="stylesheet" href="../css/styles.css" />
</head>
<body>
	<%@include file="../modules/header.jsp"%>
	<%@include file="../modules/menu.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-m-2 col-3">
				<ul>
					<li><a href="/user/add">Alta</a></li>
				</ul>
			</div>
			<div class="col-m-10 col-9">
				<div class="row">
					<div class="col">
						<div class="table-responsive">
							<table class="table table-striped table-hover" id="table">
								<caption class="caption-top">Listado de usuarios</caption>
								<thead>
									<tr>
										<th scope="col">Nombre</th>
										<th scope="col">Apellido</th>
										<th scope="col">Tipo de usuario</th>
										<th scope="col">Estado</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<nav aria-label="...">
							<ul class="pagination  justify-content-center">
								<li class="page-item disabled"><a class="page-link">Previous</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item active" aria-current="page"><a
									class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../modules/footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$
									.ajax({
										beforeSend : function(request) {
											request.setRequestHeader(
													"Content-type",
													'application/json');
											request.setRequestHeader("Accept",
													'application/json');
										},
										dataType : "json",
										url : "https://userapi.free.beeceptor.com",
										success : function(data) {
											let table = document
													.getElementById('table')
											let tbodyRef = table
													.getElementsByTagName('tbody')[0];

											for (let i = 0; i < data.data.length; i++) {
												let dataRow = data.data[i];

												let row = tbodyRef.insertRow();

												let nombreCel = row
														.insertCell(0);
												let apellidoCel = row
														.insertCell(1);
												let tipoCel = row.insertCell(2);
												let estadoCel = row
														.insertCell(3);

												nombreCel.innerHTML = dataRow["name"];
												apellidoCel.innerHTML = dataRow["surname"];
												tipoCel.innerHTML = dataRow["type"];
												estadoCel.innerHTML = dataRow["state"];

											}
										}
									})
						});
	</script>
</body>
</html>