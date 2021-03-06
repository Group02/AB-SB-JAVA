package dao;

import java.util.List;
import model.Directorate;


public interface DirectorateInterface {

	//find a Directory
	public Directorate FindDir(String directorateName);
	
	//delete a Directorate
	public void deleteDir(Directorate directorate);
			
	//insert a new Directorate
	public void insertDir(Directorate directorate);
			
	//return list Directorate
	public List<Directorate> getAllDir();
	
	//upadte directorate
	public void updateDir(Directorate directorate);
}
