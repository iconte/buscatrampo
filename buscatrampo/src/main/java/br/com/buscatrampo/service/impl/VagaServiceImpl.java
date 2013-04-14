package br.com.buscatrampo.service.impl;

import br.com.buscatrampo.dao.VagaDAO;
import br.com.buscatrampo.model.Vaga;
import br.com.buscatrampo.service.VagaService;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class VagaServiceImpl implements VagaService{
	private VagaDAO vagaDAO;
	
	public VagaServiceImpl(VagaDAO dao) {
		this.vagaDAO = dao;
	}
	
	public void salvar(Vaga vaga) {
		if(existeVagaComMesmoNome(vaga)){
			Vaga vagaComId = vagaDAO.obterUnicaVagaPorNome(vaga.getNome());
			vagaDAO.update(vagaComId);
		}else{
			vagaDAO.salvar(vaga);
		}
		
	}

	public void alterar(Vaga vaga) {
		vagaDAO.update(vaga);
		
	}

	public boolean existeVagaComMesmoNome(Vaga vaga) {
		
		return vagaDAO.existeVagaComMesmoNome(vaga);
	}

}
