package dao;

import java.util.List;

import model.Contacts;

public interface ContactInterface {

		//return a AddressLookup with address
		public Contacts FindCont(int id);
		
		//delete a AddressLookup
		public void deleteCont(Contacts contact);
		
		//insert a new AddressLookup
		public void insertCont(Contacts contact);
		
		//return list of AddressLookup
		public List<Contacts> getAllCont();
}
