<!DOCTYPE html>
<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Agregar usuario</title>
<link rel="stylesheet" href="../css/styles.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
</head>
<body>
	<%@include file="../modules/header.jsp"%>
	<%@include file="../modules/menu.jsp"%>
	<div class="container">
		<div class="m-2 pt-2">
			<form class="needs-validation" action="/bootcamp-entrega6/add"
				method="POST" novalidate>
				<div class="row">
					<div class="col-1">
						<label for="name" class="col-form-label">Nombre: </label>
					</div>
					<div class="col-3">
						<input class="form-control" required type="text" id="name"
							name="name" placeholder="Ingrese su nombre" />
						<div class="valid-feedback">El nombre está bien!</div>
						<div class="invalid-feedback">Por favor, ingrese su nombre
							nuevamente.</div>
					</div>
				</div>
				<div class="row">
					<div class="col-1">
						<label for="surname" class="col-form-label">Apellido:</label>
					</div>
					<div class="col-3">
						<input class="form-control" required type="text" id="surname"
							name="surname" placeholder="Ingrese su apellido" />
					</div>
				</div>
				<div class="row">

					<div class="col-1">
						<label for="userType" class="col-form-label">Tipo de
							usuario: </label>
					</div>
					<div class="col-3">
						<select class="form-select" id="userType" name="userType" required>
							<option value="0" selected>-</option>
							<option value="admin">Admin</option>
							<option value="user">Usuario</option>
						</select>
					</div>

					<div class="row">
						<div class="col-1">
							<label for="state" class="col-form-label">Estado:</label>
						</div>
						<div class="col-3">
							<select class="form-select" id="state" name="state" required>
								<option value="0" selected>-</option>
								<option value="active">Activo</option>
								<option value="inactive">Inactivo</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-auto">
							<button class="form-control btn-primary" type="submit">Enviar</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@include file="../modules/footer.jsp"%>
	<script type="text/javascript">
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(() => {
		  'use strict'

		  // Fetch all the forms we want to apply custom Bootstrap validation styles to
		  const forms = document.querySelectorAll('.needs-validation')

		  // Loop over them and prevent submission
		  Array.from(forms).forEach(form => {
		    form.addEventListener('submit', event => {
		      if (!form.checkValidity()) {
		        event.preventDefault()
		        event.stopPropagation()
		      }

		      form.classList.add('was-validated')
		    }, false)
		  })
		})()
		</script>
</body>
</html>

