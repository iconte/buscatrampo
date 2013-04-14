package br.com.buscatrampo.service.impl;

import java.util.List;

import br.com.buscatrampo.dao.RamoDAO;
import br.com.buscatrampo.model.Ramo;
import br.com.buscatrampo.service.RamoService;
import br.com.caelum.vraptor.ioc.Component;
@Component
public class RamoServiceImpl implements RamoService {

	private RamoDAO ramoDAO;

	public RamoServiceImpl(RamoDAO ramoDAO) {
		this.ramoDAO = ramoDAO;
	}
	
	public List<Ramo> listarTodos() {
		return ramoDAO.listarTodos();
	}

}
