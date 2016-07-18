package dao;

import java.util.List;

import model.Contact;

public interface ContactInterface {

		//return a AddressLookup with address
		public Contact FindCont(String address, String postcode);
		
		//delete a AddressLookup
		public void deleteCont(Contact addressLookup);
		
		//insert a new AddressLookup
		public void insertCont(Contact addressLookup);
		
		//return list of AddressLookup
		public List<Contact> getAllCont();
}
