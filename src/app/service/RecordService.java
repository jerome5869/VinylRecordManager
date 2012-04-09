package app.service;

import java.util.List;

import app.model.OwnRecord;
import app.model.Record;
public interface RecordService {
	
	List<Record> getCollection();
	List<OwnRecord> getOwnCollection(String username);
	
}
