package dao;

import org.apache.log4j.Logger;

public class Log {
	
	private static Logger log;

	public Log() {
		// TODO Auto-generated constructor stub
		log = Logger.getLogger(Log.class);
	}
	
	public void setInfo(String message){
		log.info(message);
	}
	
	public void setError(String message){
		log.error(message);
	}
	
	public void setFatal(String message){
		log.fatal(message);
	}
	
	public void setDebug(String message){
		log.debug(message);
	}
}
