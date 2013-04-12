
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

public 	VagaDAO vagaDAO;
public	Validator validator;
public Result result;

public VagaController(Result result, VagaDAO dao) {
	this.result = result;
	this.vagaDAO = dao;
	
}

	public void novo(){
	}
	
	
	@Post
	@Path("/vaga/salvar")
	public void salvar(Vaga vaga) {
		
		if(existeVagaCadastrada(vaga)){
			Vaga vagaComId = vagaDAO.obterUnicaVagaPorNome(vaga.getNome());
			vagaDAO.update(vagaComId);
		}else{
			vagaDAO.salvar(vaga);
		}
	result.nothing();
	
	}


	private boolean existeVagaCadastrada(Vaga vaga) {
		return vagaDAO.existeVagaComMesmoNome(vaga);
	}
	
	@Post
	@Path("/vaga/carregarxls")
	public void carregar(UploadedFile file){
		System.out.println("carregar passou");
	}
	
	
}