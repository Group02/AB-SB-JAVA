package dao;

import java.util.List;

import model.AddressLookup;

public interface AddressLookupInterface {

		//return a AddressLookup with address
		public AddressLookup FindAddr(String postcode);
		
		//delete a AddressLookup
		public void deleteAddr(AddressLookup addressLookup);
		
		//insert a new AddressLookup
		public void insertAddr(AddressLookup addressLookup);
		
		//return list of AddressLookup
		public List<AddressLookup> getAllAddr();
}
