package dao;

import java.util.List;

import model.BusinessLookup;

public interface BusinessLookupInterface {

		//return a BusinessLookup with address
		public BusinessLookup FindBusi(String SIC_Code);
		
		//delete a BusinessLookup
		public void deleteBusi(BusinessLookup businessLookup);
		
		//insert a new BusinessLookup
		public void insertBusi(BusinessLookup businessLookup);
		
		//return list of BusinessLookup
		public List<BusinessLookup> getAllBusi();
}
