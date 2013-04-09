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
	
		
	getDadosFormulario:function(){
		var vaga=[];
		vaga.push({name:"vaga.nome",value: $("#titulo").val()});
		vaga.push({name:"vaga.salario",value: $("#salario").val()});
//		vaga.push({name:"vaga.ramo",value: $("#ramo").val()});
		vaga.push({name:"vaga.local",value: $("#local").val()});
		vaga.push({name:"vaga.descricao",value: $("#descricao").val()});
		console.log(vaga);
		return vaga;
		
	},    
	    
	salvar:function(url){
//		$.post(url,this.getDadosFormulario(),function(data,status,xhr){},"json");
		$.ajax({
			  url: url,
			  data:this.getDadosFormulario(),
			  type:"POST"
			}).done(function() {
			 alert('ok');
			});
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