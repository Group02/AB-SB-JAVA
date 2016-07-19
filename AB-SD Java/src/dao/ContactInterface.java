package dao;

import java.util.List;

import model.Contact;

public interface ContactInterface {

		//return a AddressLookup with address
		public Contact FindCont(int id);
		
		//delete a AddressLookup
		public void deleteCont(Contact contact);
		
		//insert a new AddressLookup
		public void insertCont(Contact contact);
		
		//return list of AddressLookup
		public List<Contact> getAllCont();
}
