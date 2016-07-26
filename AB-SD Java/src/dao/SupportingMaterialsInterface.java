package dao;

import java.util.List;

import model.SupportingMaterial;

public interface SupportingMaterialsInterface {
	
	public void insertSM(SupportingMaterial SM);
	
	public void updateSM(SupportingMaterial SM);
	
	public SupportingMaterial getSMByURL(String URL);
	
	public List<SupportingMaterial> getAllActiveSM();
	
	public List<SupportingMaterial> getAllSM();
	
	public void deleteSM(SupportingMaterial SM);
	
}
