
    <!-- topbar starts -->
    <div class="navbar navbar-default" role="navigation">

        <div class="navbar-inner">
            <button type="button" class="navbar-toggle pull-left animated flip">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"> <img alt="Charisma Logo" src="img/LogoGTS2.png" class="hidden-xs"/>
                <span>GTS</span></a>
				
			<%if((String)request.getSession().getAttribute("username")!=null) 
			{%>
            <!-- user dropdown starts -->
            <div class="btn-group pull-right">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> <%=(String)request.getSession().getAttribute("username") %></span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">Mi Cuenta</a></li>
                    <li class="divider"></li>
                    <li><a href="<%=request.getContextPath()%>/Gts/general/login.jsp">Cerra Sesión</a></li>
                </ul>
            </div>
				<%}
				  else { 
		              RequestDispatcher rd = request.getRequestDispatcher("/Gts/general/login.jsp");
		              rd.forward(request, response);
		          } %>
				
			</div>
		</div>
	</div>
	<!-- topbar ends -->