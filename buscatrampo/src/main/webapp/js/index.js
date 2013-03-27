var indexView = {
	
//modal vaga
	abrirModalAdicionarVaga:function(url){

		$("#modal-vaga").dialog({
		  open:this.obterConteudoModalVaga(url),
	      height:500,
	      width: 600,
	      modal: true
	    });
		
	},
	
	obterConteudoModalVaga:function(url){
		$.ajax({
			  url: url,
			}).done(function ( data ) {
				$("#modal-vaga").html(data);
			});
	},
	
	
	
	salvar:function(){
//		alert('salvar');
        $('#formModalVaga').submit();  
    }, 
    
    limpar:function(){
    	$('#formModalVaga').form('clear');  
    },
    
    
    
//Modal cv
    abrirModalAdicionarCv:function(url){

		$("#modal-cv").dialog({
		  open:this.obterConteudoModalCv(url),
	      height:500,
	      width: 600,
	      modal: true
	    });
		
	},
	
	obterConteudoModalCv:function(url){
		$.ajax({
			  url: url,
			}).done(function ( data ) {
				$("#modal-cv").html(data);
			});
	},
	
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
	},
	
};
//@sourceURL=index.js