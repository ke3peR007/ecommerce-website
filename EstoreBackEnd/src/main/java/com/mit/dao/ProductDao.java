package com.mit.dao;





import java.util.List;

import com.mit.models.Category;
import com.mit.models.Product;

public interface ProductDao {

//	public void addProduct(Product product);
	void saveOrUpdate(Product product);
	Product getProduct(int id);
	void deleteProduct(int id);
//	void updateProduct(Product product);
	List<Product> getAllProducts();
	List<Category> getAllCategories();
	
}
