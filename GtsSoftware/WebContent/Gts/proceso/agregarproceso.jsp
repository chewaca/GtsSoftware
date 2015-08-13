<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="/Gts/general/header.jsp" />
	
	<meta charset="utf-8">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
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
				   <jsp:include page="includes/agregarproceso.jsp" />
				    <!-- content ends -->
				</div>
			 </div>
		<hr>
			<jsp:include page="includes/modal.jsp" />
<%-- 			<jsp:include page="/Gts/general/footer.jsp" /> --%>
		</div>
		<jsp:include page="/Gts/general/jsexternal.jsp" />
</body>
</html>

