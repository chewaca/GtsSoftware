<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="/Gts/general/header.jsp" />	
</head>
<body>
	<jsp:include page="/Gts/general/superior.jsp" /> 
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="/Gts/general/leftmenu3.jsp" />
			<jsp:include page="/Gts/general/noscript.jsp" />
			<div id="content" class="span10">
			    <!-- content starts -->
			   <jsp:include page="includes/buscarprogramacion.jsp" />
			    <!-- content ends -->
			</div>
		 </div>
	<hr>
		<jsp:include page="includes/modal.jsp" />
		<jsp:include page="/Gts/general/footer.jsp" />
	</div>
	<jsp:include page="/Gts/general/jsexternal.jsp" />
</body>
</html>