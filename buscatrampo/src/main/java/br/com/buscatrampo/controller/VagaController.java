
package br.com.buscatrampo.controller;

import br.com.buscatrampo.dao.VagaDAO;
import br.com.buscatrampo.model.Vaga;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.interceptor.multipart.UploadedFile;

@Resource
public class VagaController {

public 	VagaDAO dao;
public	Validator validator;
public Result result;

public VagaController(Result result) {
	this.result = result;
	
}

	public void novo(){
	}
	
	
	@Post
	@Path("/vaga/salvar")
	public void salvar(Vaga vaga) {
	System.out.println(vaga.getNome());
	System.out.println(vaga.getRamo());
	System.out.println(vaga.getSalario());
	System.out.println(vaga.getDescricao());
		
//		if(existeVagaCadastrada(vaga)){
//			dao.update(vaga);
//		}else{
//			dao.salvar(vaga);
//		}
	result.nothing();
	
	}


	private boolean existeVagaCadastrada(Vaga vaga) {
		return dao.existeVagaComMesmoNome(vaga);
	}
	
	@Post
	@Path("/vaga/carregarxls")
	public void carregar(UploadedFile file){
		System.out.println("carregar passou");
	}
	
	
}