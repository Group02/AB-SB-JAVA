package dao;

import java.util.List;

import model.AddressLookup;

public interface AddressLookupInterface {

		//return a AddressLookup with address
		public AddressLookup FindAddr(String address, String postcode);
		
		//delete a user
		public void deleteAddr(AddressLookup addressLookup);
		
		//insert a new user
		public void insertAddr(AddressLookup addressLookup);
		
		//return list of user
		public List<AddressLookup> getAllAddr();
}
