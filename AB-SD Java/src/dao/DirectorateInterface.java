package dao;

import java.util.List;
import model.Directorate;


public interface DirectorateInterface {

	//delete a Directorate
	public void deleteDir(Directorate directorate);
			
	//insert a new Directorate
	public void insertDir(Directorate directorate);
			
	//return list Directorate
	public List<Directorate> getAllDir();
	
	//upadte directorate
	public void updateDir(Directorate directorate);
}
