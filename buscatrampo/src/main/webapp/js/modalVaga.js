var modalVaga={
	
		getDadosFormulario:function(){
			var vaga=[];
			vaga.push({name:"vaga.nome",value: $("#titulo").val()});
			vaga.push({name:"vaga.salario",value: $("#salario").val()});
			vaga.push({name:"vaga.ramo.id",value: $("#ramo").val()});
			vaga.push({name:"vaga.local",value: $("#local").val()});
			vaga.push({name:"vaga.descricao",value: $("#descricao").val()});
			console.log(vaga);
			return vaga;
			
		},    
		    
		salvar:function(url){
//			$.post(url,this.getDadosFormulario(),function(data,status,xhr){},"json");
			$.ajax({
				  url: url,
				  data:this.getDadosFormulario(),
				  type:"POST"
				}).done(function() {
				 alert('sucesso');
				 $("#modal-vaga").dialog('close');
				});
	    },
	    
	    limpar:function(){
	    	$('#formModalVaga').form('clear');  
	    },
		
};

$(document).ready(function(){
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

	
});