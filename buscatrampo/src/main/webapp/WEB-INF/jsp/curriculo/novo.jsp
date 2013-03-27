	
    
      
    <div style="margin:10px 0;"></div>  
    <div class="easyui-panel" title="New Topic" style="width:400px">  
        <div style="padding:10px 0 10px 60px">
        
      <fieldset> 
      <legend>Opções de preenchimento:</legend> 
	      <input type="radio" name="tipocv" value="xls" checked="checked" onchange="indexView.exibirDivXls()"> <label for="tipocv" >Arquivo xls</label> <br>
		  <input type="radio" name="tipocv" value="formulario" onchange="indexView.exibirDivFormulario()"> <label for="tipocv">Preencher Formulario</label>
	  </fieldset>  
      
      <div id="divPlanilhaCv" >
      <br><br>
   			<form id="formModalCVExcel" action="curriculo/carregar" method="post" enctype="multipart/form-data">
   				<input name="file" type="file"></input>
   				<a href="#" class="easyui-linkbutton l-btn" onclick="javascript:indexView.carregarCvXls();"><span class="l-btn-left">carregar</span></a>
   			</form>
   			
      </div> 
      <br>
       <div id="divModalCV" style="display:none;">
       
	        <form id="formModalCV" method="post" action="<c:url value='/vaga/salvar'/>">
	            <table>  
	                  <tr>  
	                    <td>Nome:</td>  
	                    <td><input class="easyui-validatebox" type="text" name="email" data-options="required:true"></input></td>  
	                </tr> 
	                <tr>  
	                    <td>Endereço:</td>  
	                    <td><input class="easyui-validatebox" type="text" name="email" data-options="required:true"></input></td>  
	                </tr>  
	                <tr>  
	                    <td>Email:</td>  
	                    <td><input class="easyui-validatebox" type="text" name="subject" data-options="required:true"></input></td>  
	                </tr>  
	                <tr>  
	                    <td>Telefone:</td>  
	                    <td><input class="easyui-validatebox" type="text" name="subject" data-options="required:true"></td>  
	                </tr>  
	                <tr>  
	                    <td>Experiencia Profissional:</td>  
	                    <td>  
	                        <select class="combo" name="language"><option value="ar">Arabic</option><option value="bg">Bulgarian</option><option value="ca">Catalan</option><option value="zh-cht">Chinese Traditional</option><option value="cs">Czech</option><option value="da">Danish</option><option value="nl">Dutch</option><option value="en" selected="selected">English</option><option value="et">Estonian</option><option value="fi">Finnish</option><option value="fr">French</option><option value="de">German</option><option value="el">Greek</option><option value="ht">Haitian Creole</option><option value="he">Hebrew</option><option value="hi">Hindi</option><option value="mww">Hmong Daw</option><option value="hu">Hungarian</option><option value="id">Indonesian</option><option value="it">Italian</option><option value="ja">Japanese</option><option value="ko">Korean</option><option value="lv">Latvian</option><option value="lt">Lithuanian</option><option value="no">Norwegian</option><option value="fa">Persian</option><option value="pl">Polish</option><option value="pt">Portuguese</option><option value="ro">Romanian</option><option value="ru">Russian</option><option value="sk">Slovak</option><option value="sl">Slovenian</option><option value="es">Spanish</option><option value="sv">Swedish</option><option value="th">Thai</option><option value="tr">Turkish</option><option value="uk">Ukrainian</option><option value="vi">Vietnamese</option></select>  
	                    </td>  
	                </tr>
	                <tr>  
	                    <td>Descrição:</td>  
	                    <td><textarea name="message" style="height:60px;" data-options="required:true"></textarea></td>  
	                </tr>
	            </table>
	              
	        </form>  
	       
	        <div style="text-align:center;padding:5px">  
	        	
	            <a href="#" class="easyui-linkbutton l-btn" onclick="javascript:indexView.salvar();"><span class="l-btn-left">Salvar</span></a>  
	            <a href="#" class="easyui-linkbutton l-btn" onclick="javascript:indexView.limpar();"><span class="l-btn-left">Limpar</span></a>  
	        </div> 
          </div>  
	   
	    </div>
      </div>
      

