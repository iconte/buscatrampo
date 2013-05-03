<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="css/themes/default/linkbutton.css">
	<link rel="stylesheet" type="text/css" href="css/themes/default/validatebox.css">  
    <link rel="stylesheet" type="text/css" href="css/themes/icon.css">  
    <link rel="stylesheet" type="text/css" href="css/demo.css">  
    
	
		
</head>
<body>
	
<div style="margin:10px 0;"></div>
	<c:url var="url"  value="/vaga/novo"/>
	<div style="padding:5px;border:1px solid #ddd">
		<a href="#" class="easyui-linkbutton" data-options="plain:true">Inicio</a>
		<%-- <a href="javascript:indexView.abrirModalAdicionarVaga('<c:url  value="/vaga/novo"/>');" class="easyui-linkbutton" data-options="plain:true">Area Empresa</a> --%>
		<a href="<c:url  value="/curriculo/novo"/>" class="easyui-linkbutton" data-options="plain:true">Área Candidato</a>
		
	</div> 
	
	
	<p align="center"><input id="busca" type="text"  style="width:500px;"/> <img src="img/search.png"/></p>
	
	
	<div id="modal-vaga" title="Nova vaga" style="width:600px;height:400px" ></div>  
	<div id="modal-cv" title="Novo CV" style="width:600px;height:400px"></div>
	<!-- scripts  -->
	<script type="text/javascript" src="<c:url value="/js/jquery-1.8.0.js" />"></script>
	<script type="text/javascript" src="<c:url value="/js/jquery.easyui.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/js/index.js" />"></script>
</body>
</html>
