<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8">
	<title>Sistema GTS - Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Gestión de la Teconología en Salud">
	<meta name="author" content="Los manos">

	<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
	
    <link href="css/charisma-app.css" rel="stylesheet">
    <link href='bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='css/jquery.noty.css' rel='stylesheet'>
    <link href='css/noty_theme_default.css' rel='stylesheet'>
    <link href='css/elfinder.min.css' rel='stylesheet'>
    <link href='css/elfinder.theme.css' rel='stylesheet'>
    <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='css/uploadify.css' rel='stylesheet'>
    <link href='css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="bower_components/jquery/jquery.min.js"></script>

	<!-- The GTS icon -->
	<link rel="shortcut icon" href="img/LogoGTS2.png">
	<link href='css/opa-icons.css' rel='stylesheet' >
	<script>

  function valida_envia(){
   	if (document.fvalida.username.value.length==0)
 {
		alert("usuario no puede quedar en blanco")
		document.fvalida.username.focus()
                document.fvalida.username.value = ""
		return 0;
	}

         	if (document.fvalida.password.value.length==0)

 {
		alert("contraseña no puede quedar en blanco")
		document.fvalida.password.focus()
                document.fvalida.password.value = ""
		return 0;
	}
   //el formulario se envia si todo esta correcto	
	document.fvalida.submit();

}

    </script>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
</head>

<body>
<%
HttpSession sesion = request.getSession(true);
if (sesion!=null){
	sesion.invalidate();
}	%>
		<div class="ch-container">
		<div class="row">
		
			<div class="row">
				<div class="col-md-8 center login-header">
					<h2>Bienvenido a GTS Solution</h2>
				</div><!--/span-->
			</div><!--/row-->
			
			<div class="row">
				<div class="well col-md-3 center login-box">
					<div class="alert alert-info">
						Ingrese su Usuario y Contraseña.
					</div>
					<form class="form-horizontal" action="<%= response.encodeURL("GENLogin")%>" name="fvalida" method="post">					
					<input type="hidden" name="accion" value="Login"></input>
						<fieldset>
							<div class="input-group  col-md-12" data-rel="tooltip">
								<span class="input-group-addon">
								<i class="glyphicon glyphicon-user"></i>
								</span>
								<input autofocus class="form-control" name="username" id="username"  type="text" placeholder="Usuario" />
							</div>
							<div class="clearfix"></div>

							<div class="input-group  col-md-12" data-rel="tooltip">
								<span class="input-group-addon">
								<i class="glyphicon glyphicon-lock">
								</i></span>
								<input class="form-control" name="password" id="password" type="password" placeholder="Contraseña" />
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend">
							<label class="remember"  for="remember"><input type="checkbox" id="remember" />Recordar mis datos</label>
							</div>

							<p class="center col-md-9">
							<button type="button" name="button" class="btn btn-primary" onclick="valida_envia()">Inciar Sesión</button>
							</p>
						</fieldset>
					</form>
				</div><!--/span-->
			</div><!--/row-->
				</div><!--/fluid-row-->
		
	</div><!--/.fluid-container-->

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- jQuery -->
	<script src="js/jquery-1.7.2.min.js"></script>
	<!-- jQuery UI -->
	<script src="js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="js/bootstrap-tour.js"></script>
	<!-- library for cookie management -->
	<script src="js/jquery.cookie.js"></script>
	<!-- calander plugin -->
	<script src='js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.min.js"></script>
	<script src="js/jquery.flot.pie.min.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="js/charisma.js"></script>
	
		
</body>
</html>
