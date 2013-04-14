var modalVaga={
	
		iniciar:function(){
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
		}
		
};