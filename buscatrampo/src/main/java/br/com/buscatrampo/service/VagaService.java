package br.com.buscatrampo.service;

import br.com.buscatrampo.model.Vaga;

public interface VagaService {

	public void salvar(Vaga vaga);
	
	public void alterar(Vaga vaga);

	public boolean existeVagaComMesmoNome(Vaga vaga);
}
