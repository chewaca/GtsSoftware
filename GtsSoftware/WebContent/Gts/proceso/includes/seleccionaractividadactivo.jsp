<%@page import="java.text.SimpleDateFormat"%>
 <%@page import="GtsSoftware.actividad.ResultadoActividadBeanData"%> 
<%@page import="java.util.Vector"%>

<script>
	function alt_fecha(obj){
	obj.value=obj.value.slice(0,5);
	
	}
	
	function alt_submit(){
		var form= document.getElementById("frmAlternativo");
		form.accion.value="AgregarMultiple";
		form.submit();
		//if(validaForm()) form.submit();			
}
	
	
	function alt_consultar(cod){
		var form=document.getElementById("frmAlternativo");
		form.accion.value="Consultar";
		form.codigo.value=cod;
		form.submit();
	}
	
	

	function alt_Insertar(){
		var elementos = document.getElementsByName("checkAcciones");
		var texto=new Array(elementos.length);
		for (x=0;x<elementos.length;x++)
			if (elementos[x].checked) {
				texto[x] =  elementos[x].value;
			}
		parent.anhadir(texto);
	}
	</script>	
	
<!--The beans  -->
<jsp:useBean id="resultadosA" scope="session" class="java.util.Vector"></jsp:useBean>
<jsp:useBean id="variable" scope="request" class="java.lang.String"></jsp:useBean>
	
			<!-- content starts -->

			<div class="row-fluid sortable">
				
			<!-- content starts -->

			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-search"></i>  BUSCAR ACTIVIDAD/ACTIVO				  </h2>
                        <div class="box-icon">
							
						</div>

				  </div>
				  
					<div class="box-content">
						<form class="form-horizontal" name="frmCriteriosBusqueda" id="frmCriteriosBusqueda"  method="POST" action="<%= response.encodeURL(request.getContextPath()+"/Gts/proceso/SMVProceso")%>">
						   <input type="hidden" name="accion" value="SeleccionarActividadActivo"/></input>
						   <input type="hidden" name="tipo" value="2"/></input>
						   <input type="hidden" name="variable" value=""></input>
						  
						  <fieldset>
						    <div class="control-group">
						    					    
							  <div class="control-group">
								<label class="control-label" for="selectError">Estado:</label>
								<div class="controls">
								  <select id="cmdComponente" name="cmdComponente" data-rel="chosen" >	  
									<option value="Actividad">Actividad</option>
									<option value="Activo">Activo</option>						
								  </select>
								</div>
							  </div>
						    </div>

						    
						    <div class="form-actions">
						    <button type="submit" class="btn btn-primary"><i class="icon-search icon-white"></i>Buscar</button>

							</div>
						  </fieldset>
					  </form>   
					</div>
				  </div>
				</div><!--/span-->

			</div><!--/row-->
			
			<%if (variable.equals("Actividad")) {%>
			<form id="frmAlternativo" name="frmAlternativo" method="POST" action="SMVActividad">
			  <input type="hidden" name="accion" value="AgregarMultiple"></input>
			  <input type="hidden" name="codigo" value=""></input>
			  <input type="hidden" name="tipo" value="1"></input>
			  

			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2>RESULTADOS</h2>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">

						   <thead>
							  <tr>
								  <th width="25%%">Nombre</th>
								  <th>Descripción</th>
								  <th>Operación</th>

							  </tr>
						  </thead>  
						  
						  <element>
					      <tbody id="resultadobusqueda"> 


						  <%SimpleDateFormat df= new SimpleDateFormat("dd/MM/YYYY"); 
                          			for(int i=0;
                          			i<resultadosA.size();i++){
                             %>
          
							 <tr>

                          	 <td class="center">
                          				<%=
                          					((ResultadoActividadBeanData)resultadosA.get(i)).getNombre()

                          				%>
                          	</td>
                          	 <td class="center">
                          				<%=
                          					((ResultadoActividadBeanData)resultadosA.get(i)).getDescripcion()
                          				%>
                          	</td>    

                          	        <td class="center">

                          				<!--  poner los resultados a variables hidden y sacarlas =D, con arregle creo k falla u.u -->
                          				<a class="btn btn-primary">
												<label class="checkbox inline">
													 <input type="checkbox" name="checkAcciones" id="checkAcciones" value="<%=((ResultadoActividadBeanData)resultadosA.get(i)).getCodigo()%>">
													  Seleccionar
												</label>
									   </a>

 
                          			</td> 
                          	
							<%}%>
					       </tbody>
					       </element>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div>
			</form>
			
			
			<td class="center">
                       	<a class="btn btn-primary"
                       		href="javascript:alt_Insertar()">
                       		<i class="icon-plus icon-white"></i>
							Asignar Actividades
                       	</a>
            </td>
            
            <%} %>
			
			<!--/row-->
                </form> 

			<div class="row-fluid sortable"><!--/span--><!--/span-->
			</div><!--/row-->
			
			<div class="row-fluid sortable"><!--/span--><!--/span-->
			
			</div><!--/row-->
			
			<div class="row-fluid sortable"><!--/span-->
			</div><!--/row-->
                
                
         