
package br.com.buscatrampo.controller;

import br.com.buscatrampo.util.ExcelUtil;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.interceptor.multipart.UploadedFile;

@Resource
public class CurriculoController {

	@Get
	@Path("/curriculo/novo")
	public void novo(){
	}
	
	
	@Post
	@Path("/curriculo/carregar")
	public void carregar(UploadedFile file){
		ExcelUtil.getCurriculosPorPlanilha(file.getFile());
	}
}