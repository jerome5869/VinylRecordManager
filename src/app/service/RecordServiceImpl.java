package app.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.model.OwnRecord;
import app.model.Record;


@Service("RecordService")
@Transactional

public class RecordServiceImpl implements RecordService {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Record> getCollection() {
		return sessionFactory.getCurrentSession().createQuery("from Record").list();
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public List<OwnRecord> getOwnCollection(String username) {
		Query query= sessionFactory.getCurrentSession().createQuery("from OwnRecord where id.idUser=:name");
		query.setString("name", username);
		return query.list();
	}

}
