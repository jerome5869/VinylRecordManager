package app.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import app.service.PlaylistService;


@Controller
public class PlaylistController {

	@Autowired
	private PlaylistService playlist;
	
	@RequestMapping(value="playlist.html", method = RequestMethod.GET)
	public ModelAndView displayPlaylist(@RequestParam(value="id") int id)
	{
		return new ModelAndView("playlist", "playlist", playlist.getPlaylist(id));
	}
}
