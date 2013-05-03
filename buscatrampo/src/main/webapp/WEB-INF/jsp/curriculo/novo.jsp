<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<link rel="stylesheet" type="text/css" href="../css/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../css/themes/default/linkbutton.css">
	<link rel="stylesheet" type="text/css" href="../css/themes/default/validatebox.css">  
    <link rel="stylesheet" type="text/css" href="../css/themes/icon.css">  
    <link rel="stylesheet" type="text/css" href="../css/demo.css">
</head>
<body>    

 <div>	
	<div style="position:relative;float:left;">
		<p><img src="../img/sem-avatar.jpg"></p>
		<p align="center"><a href="#" class="easyui-linkbutton l-btn">editar</a></p>
	</div>
      <div id="tabs" class="easyui-tabs" style="display:inline;">
      
      	<div title="Pessoal">
 			<form id="formModalCV" method="post" action="<c:url value='/vaga/salvar'/>">
	            <table >  
	                 <tr>  
	                    <td>Nome:</td>  
	                    <td><input class="easyui-validatebox" type="text" name="email" data-options="required:true"></input></td>  
	                </tr>
	                <tr>  
	                    <td>RG:</td>  
	                    <td><input class="easyui-validatebox" type="text" name="email" data-options="required:true"></input></td>  
	                </tr>
	                <tr>  
	                    <td>CPF:</td>  
	                    <td><input class="easyui-validatebox" type="text" name="email" data-options="required:true"></input></td>  
	                </tr> 
	                <tr>  
	                    <td>Endereço:</td>  
	                    <td><input class="easyui-validatebox" type="text" name="email" data-options="required:true"></input></td>  
	                    <td>Numero</td>
	                    <td><input class="easyui-validatebox" type="text" name="numero" size="4" data-options="required:true"></input></td>
	                </tr>  
	                <tr>  
	                    <td>Email:</td>  
	                    <td><input class="easyui-validatebox" type="text" name="subject" data-options="required:true"></input></td>  
	                </tr>  
	                <tr>  
	                    <td>Telefone:</td>  
	                    <td><input class="easyui-validatebox" type="text" name="subject" maxlength="9" data-options="required:true" ></td>  
	                </tr>  
	             </table>
          	</form>    
         </div>
      
 		<div title="Profissional">
  			<table>  
	         	<tr>  
                  <td>Empresa:</td>  
                  <td><input class="easyui-validatebox" type="text" name="email" data-options="required:true"></input></td>  
	            </tr> 
	            <tr>  
                  <td>Ramo:</td>  
                  <td><input class="easyui-validatebox" type="text" name="email" data-options="required:true"></input></td>  
              </tr>  
              <tr>  
                  <td>Resumo das atividades:</td>  
                  <td><input class="easyui-validatebox" type="text" name="subject" data-options="required:true"></input></td>  
              </tr>  
        	</table>
          </div>      
	             
           <a href="#" class="easyui-linkbutton l-btn" onclick="javascript:modalCv.salvar();">Salvar</a>  
           <a href="#" class="easyui-linkbutton l-btn" onclick="javascript:modalCv.limpar();">Limpar</a>  
	             
        </div> 
	</div>	       
	   
	    <!-- js -->        
	    <script type="text/javascript" src="<c:url value="/js/jquery-1.8.0.js" />"></script>
		<script type="text/javascript" src="<c:url value="/js/jquery.easyui.min.js" />"></script>
      	<script type="text/javascript" src="<c:url value="/js/modalCurriculo.js" />"></script>
     	<!-- js -->
  </body>    
