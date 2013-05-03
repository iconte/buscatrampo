var modalCv={
	
		carregarCvXls:function(){
			 $('#formModalCVExcel').trigger('submit');
		},
		
		exibirDivXls:function(){
			$('#divModalCV').hide();
			$('#divPlanilhaCv').show();
		},
		
		exibirDivFormulario:function(){
			$('#divModalCV').show();
			$('#divPlanilhaCv').hide();
		}
		
};
$(document).ready(function(){
	$('#tabs').tabs({  
	     
	});  
});