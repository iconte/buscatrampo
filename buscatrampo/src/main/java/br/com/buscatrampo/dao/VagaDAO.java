package br.com.buscatrampo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.com.buscatrampo.model.Vaga;
@Repository
public interface VagaDAO {
	
	public List<Vaga> listarTodas();
	
	public void salvar(Vaga vaga);
	
	public boolean existeVagaComMesmoNome(Vaga vaga);
	
	public Vaga obterUnicaVagaPorNome(String nome);
	
	public void update(Vaga vaga);
	
}
