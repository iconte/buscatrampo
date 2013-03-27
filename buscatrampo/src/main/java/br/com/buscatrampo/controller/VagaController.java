
package br.com.buscatrampo.controller;

import br.com.buscatrampo.model.Vaga;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.interceptor.multipart.UploadedFile;

@Resource
public class VagaController {

	@Get
	@Path("/vaga/novo")
	public void novo(){
	}
	
	
	@Post
	@Path("/vaga/salvar")
	public void salvar(Vaga vaga, UploadedFile file){
		System.out.println("salvar passou");
	}
	
	@Post
	@Path("/vaga/carregarxls")
	public void carregar(UploadedFile file){
		System.out.println("carregar passou");
	}
	
	
}