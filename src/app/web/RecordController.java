package app.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import app.model.OwnRecord;
import app.model.Record;
import app.service.RecordService;



@Controller
public class RecordController {

	@Autowired
	private RecordService record;
	
	@RequestMapping(value="collection.html", method = RequestMethod.GET)
	public ModelAndView getCollection()
	{
		List<Record> collection=record.getCollection();
		/*for (int i=0;i<collection.size();i++){
			System.out.println(collection.get(i).getMatrixnumber()+"bg");
		}*/
		ModelAndView mav5 =new ModelAndView("collection", "collection", collection);
		return mav5;
	}
	
	@RequestMapping(value="ownCollection.html", method = RequestMethod.GET)
	public ModelAndView getCollection(HttpSession session)
	{
		List<OwnRecord> ownCollection=record.getOwnCollection((String) session.getAttribute("nom"));
		System.out.println("klfskg");
		/*for (int i=0;i<ownCollection.size();i++){
			System.out.println(ownCollection.get(i).getRecord().getMatrixnumber()+"bg");
		}*/
		ModelAndView mav6=new ModelAndView("macollection", "ownCollection", ownCollection);
		return mav6;
	}
	
}
