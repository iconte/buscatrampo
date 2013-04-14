<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript">
	$('#titulo').validatebox({  
	    required: true
	});

	$('#salario').numberbox({  
	    min:0,  
	    precision:2  
	});

	$('#salario').validatebox({  
	    required: true  
	});

	$('#ramo').validatebox({  
	    required: true  
	});

	$('#local').validatebox({  
	    required: true  
	});


	$('#descricao').validatebox({  
	    required: true  
	});
</script>


	<c:url var="urlSalvar" value="/vaga/salvar"/>
    <div style="margin:10px 0;"></div>  
    <div class="easyui-panel" title="New Topic" style="width:400px">  
        <div style="padding:10px 0 10px 60px">  
        <form id="formModalVaga" method="post" > 
         
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
        </form>  
        </div>  
        <div style="text-align:center;padding:5px">  
            <a href="javascript:indexView.salvar('<c:url value="/vaga/salvar"/>');" class="easyui-linkbutton l-btn" ><span class="l-btn-left">Salvar</span></a>  
            <a href="javascript:indexView.limpar();" class="easyui-linkbutton l-btn" ><span class="l-btn-left">Limpar</span></a>  
        </div>  
    </div>  
      

