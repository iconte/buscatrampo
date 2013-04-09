package br.com.buscatrampo.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import br.com.buscatrampo.dao.VagaDAO;
import br.com.buscatrampo.model.Vaga;
import br.com.buscatrampo.util.HibernateUtil;

public class VagaDAOImpl implements VagaDAO {

	public List<Vaga> listarTodas() {
		Session session = getSession();
		Query query = session.createQuery(" from Vaga v ");
		return query.list();
	}

	public void salvar(Vaga vaga) {
		Session session =getSession(); 
		salvarCurriculo(vaga, session);
	}
	
	private void salvarCurriculo(Vaga vaga, Session session) {
		Transaction transaction = session.beginTransaction();
		session.save(vaga);
		transaction.commit();
	}

	private Session getSession() {
		SessionFactory factory= HibernateUtil.getSessionFactory();
		return factory.openSession();
	}
	
	public boolean existeVagaComMesmoNome(Vaga vaga){
		Session session = getSession();
		Query query = session.createQuery(" from Vaga v where upper(nome) = upper(:nome) ");
		query.setParameter("nome", vaga.getNome());
		return query.list().size()>0;
	}

	public void update(Vaga vaga) {
		Session session = getSession();
		Transaction transaction = session.beginTransaction();
		session.update(vaga);
		transaction.commit();
		
	}

}
