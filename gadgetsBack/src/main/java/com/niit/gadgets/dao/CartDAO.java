package com.niit.gadgets.dao;

import java.util.List;

import com.niit.gadgets.model.Cart;
import com.niit.gadgets.model.Product;

public interface CartDAO {

	

	 //save
		public void save(Cart cart);
	    //read
			public Cart getId(int id);
			//update
			public void update(Cart cart);
			//deleted
			public void delete(Cart c);
			//Get All
			public List<Cart> getAll();
			
			public void persist(Cart c);
			
			//public List<Cart> checkExistance(int pid);

	
}
