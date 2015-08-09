<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="/Gts/general/header.jsp" />
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link rel="shortcut icon" href="img/LogoGTS2.png">
</head>
<body>


	<jsp:include page="/Gts/general/superior.jsp" /> 
		<div class="container-fluid">
			<div class="row-fluid">
				<jsp:include page="/Gts/general/leftmenu3.jsp" />
				<jsp:include page="/Gts/general/noscript.jsp" />
				
				<div id="content" class="span10">
				    <!-- content starts -->
				    <jsp:include page="includes/buscardiasnolaboral.jsp" />
				    <!-- content ends -->
				</div>
			 </div>
		<hr>
<%-- 			<jsp:include page="/Gts/general/footer.jsp" /> --%>
		</div>
		<jsp:include page="/Gts/general/jsexternal.jsp" />
</body>
</html>

