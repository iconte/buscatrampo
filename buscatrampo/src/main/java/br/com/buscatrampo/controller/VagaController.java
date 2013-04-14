
package br.com.buscatrampo.controller;

import br.com.buscatrampo.model.Vaga;
import br.com.buscatrampo.service.RamoService;
import br.com.buscatrampo.service.VagaService;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.interceptor.multipart.UploadedFile;

@Resource
public class VagaController {

	private RamoService ramoService;
	private VagaService vagaService;
	private	Validator validator;
	private Result result;

	public VagaController(Result result,RamoService ramoService,VagaService vagaService) {
		this.result = result;
		this.ramoService = ramoService;
		this.vagaService = vagaService;
	}

	public void novo(){
		result.include("ramos",ramoService.listarTodos());
	}
	
	@Post
	@Path("/vaga/salvar")
	public void salvar(Vaga vaga) {
		vagaService.salvar(vaga);	
		result.nothing();
	}


	private boolean existeVagaCadastrada(Vaga vaga) {
		return vagaService.existeVagaComMesmoNome(vaga);
	}
	
	@Post
	@Path("/vaga/carregarxls")
	public void carregar(UploadedFile file){
		System.out.println("carregar passou");
	}
	
	
}