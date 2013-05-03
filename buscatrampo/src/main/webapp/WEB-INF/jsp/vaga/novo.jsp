<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



	<c:url var="urlSalvar" value="/vaga/salvar"/>
    <div style="margin:10px 0;"></div>  
    <div class="easyui-panel" title="New Topic" style="width:400px">  
        <div style="padding:10px 0 10px 60px">  
         
            <table>  
                  <tr>  
                    <td>Titulo da vaga:</td>  
                    <td><input class="easyui-validatebox" type="text" name="vaga.titulo" id="titulo" data-options="required:true" ></input></td>  
                </tr> 
                <tr>  
                    <td>Salário:</td>  
                    <td><input class="easyui-numberbox" type="text" name="vaga.salario" id="salario" data-options="required:true"></input></td>
                </tr>  
                <tr>  
                    <td>Ramo:</td>  
                    <td>
                    <select id="ramo">
                    		<option value="-1"></option>
                    		<c:forEach var="ramo" items="${ramos}">
                    			<option value="<c:out value="${ramo.id}"/>"><c:out value="${ramo.descricao}"/></option>
                    		</c:forEach>
                    	</select>
                    </td>  
                </tr>  
                <tr>  
                    <td>Local:</td>  
                    <td>
                    	<input class="easyui-validatebox" type="text" name="vaga.local" id="local" data-options="required:true">
                    	
                    </td>  
                </tr>  
                <tr>  
                    <td>Descrição:</td>  
                    <td><textarea name="vaga.descricao" id="descricao" class="easyui-validatebox" style="height:60px;" data-options="required:true"></textarea></td>  
                </tr>
                 
            </table>  
        </div>  
        <div style="text-align:center;padding:5px">  
            <a href="javascript:modalVaga.salvar('<c:url value="/vaga/salvar"/>');" class="easyui-linkbutton l-btn" ><span class="l-btn-left">Salvar</span></a>  
            <a href="javascript:modalVaga.limpar();" class="easyui-linkbutton l-btn" ><span class="l-btn-left">Limpar</span></a>  
        </div> 

	 <!-- js -->        
      <script type="text/javascript" src="<c:url value="/js/modalVaga.js" />"></script>
     <!-- js --> 
    </div>  
      

