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
	
	
	
};



//@sourceURL=index.js