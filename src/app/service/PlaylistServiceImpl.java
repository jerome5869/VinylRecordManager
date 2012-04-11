package app.service;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import app.model.Playlist;

@Service("PlaylistService")
@Transactional
public class PlaylistServiceImpl implements PlaylistService {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Playlist getPlaylist(int id) {
		return (Playlist) sessionFactory.getCurrentSession().get(Playlist.class,id);
		
	}

}
