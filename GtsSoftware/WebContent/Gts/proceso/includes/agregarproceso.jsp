<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<script>

function alt_submit(){
		var form= document.frmProceso;
		
		nombreProceso = document.getElementById("txtNombre").value;
		descripcion=document.getElementById("txtDescripcion").value;
		if (nombreProceso.length != 0 && descripcion.length!=0) {
			form.submit();
        }
		//if(validaForm()) form.submit();			
}

$(function() {
	$( "#fFechaFin" ).datepicker({
	      changeMonth: true,
	      changeYear: true
	});
});

</script>
<% Date fechaHoy=new Date();
SimpleDateFormat df= new SimpleDateFormat("dd/MM/YYYY");
%>
			  <div class="row-fluid sortable">
			    <div class="box col-md-10">
			    <div class="box-inner">	
			      <div class="box-header well" data-original-title>
			        <h2><i class="glyphicon glyphicon-th-large"></i> AGREGAR PROCESO</h2>
					</div>
					
					<div class="box-content">
					
						<form class="form-horizontal" id="frmProceso" name="frmProceso" method="POST" action="<%= response.encodeURL("SMVProceso")%>">
			                <input type="hidden" name="accion" value="Agregar"></input>
							<input type="hidden" name="tipo" value="2"></input>
						
						  <fieldset>                                                                              
							  	<div class="control-group">
								  	<label class="control-label" for="typeahead1">Nombre (*): </label>
	                                <div class="controls">
	                                <input type="text"  class="span6 typeahead" id="txtNombre" name="txtNombre" data-provide="typeahead" required title="Se necesita el nombre del proceso">
	                              	</div>
                              	</div>
                       
								<div class="control-group">
									<label class="control-label" for="typeahead3">Fecha Fin : </label>
					              	<div class="controls">
					              	<input type="text"  class="input-small datepicker" id="fFechaFin" name="fFechaFin" value=<%-- <%=df.format(fechaHoy.getTime()) %> --%>>
									</div>
								</div>
								<div class="control-group">
                               <label class="control-label" for="typeahead4">Descripción (*): </label>
                               <div class="controls">
                                  <textarea id="txtDescripcion" name="txtDescripcion" rows="3" cols="1000" style="resize:none; height: 74px; width: 320px" required title="Se necesita una breve descripciòn"></textarea>
                               	</div>
                               </div>
			          	
			          	<br/>
			          	
			          	<table>
				          	<tr>
				          	<td>
				          	<td>
				              <button type="submit" class="btn btn-primary" onclick="javascript:alt_submit()">
				              <i class="glyphicon glyphicon-check icon-white"></i> Agregar</button>
				              <button type="reset" class="btn" onclick="location.href='buscarproceso.jsp'">
				              <i class="glyphicon glyphicon-circle-arrow-left icon-black"></i> Regresar</button>
				            </td>
							</tr>
						</table>
		              </fieldset>
		              
		            </form>
		          </div>
		        </div>
				</div>
			    <!--/span-->
		      </div>
			
		<hr>

		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">Ã—</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>

		
	
	<script>
	function loadContent() 
{ 
   $("#includedContent").load("menu.html"); 
} 


	</script>
		<script>loadContent()</script> 
</body>
</html>
