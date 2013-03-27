package br.com.buscatrampo.dao;

import java.util.List;

import br.com.buscatrampo.model.Vaga;

public interface VagaDAO {
	
	public List<Vaga> listarTodas();
	
	public void salvar(Vaga vaga);
}
