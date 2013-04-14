package br.com.buscatrampo.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import br.com.buscatrampo.dao.RamoDAO;
import br.com.buscatrampo.model.Ramo;
import br.com.buscatrampo.util.HibernateUtil;
import br.com.caelum.vraptor.ioc.Component;

@Component
public class RamoDAOImpl implements RamoDAO {
	
	private Session getSession() {
		SessionFactory factory= HibernateUtil.getSessionFactory();
		return factory.openSession();
	}
	
	public List<Ramo> listarTodos() {
		Query query =getSession().createQuery(" from Ramo r");
		return query.list();
	}

}
