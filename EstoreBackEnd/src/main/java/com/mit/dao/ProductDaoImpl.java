package com.mit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mit.models.Category;
import com.mit.models.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;
	public ProductDaoImpl() {
		System.out.println("ProductDaoImpl bean is created");
	}
	
//	public void addProduct(Product product) {
//		Session session = sessionFactory.getCurrentSession();
//		session.save(product);
//
//	}
	public Product getProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.get(Product.class, id);
		//SQL query select * from product where id=2
		return product;
	}
	public void deleteProduct(int id) {
		Session session=sessionFactory.getCurrentSession();
		Product product =new Product();
		product.setId(id);
		session.delete(product);
		//delete from product where id=3
	}
//	public void updateProduct(Product product) {//product with updated properties
//		Session session=sessionFactory.getCurrentSession();
//		session.update(product);
//		//update product set pname=?,description=?,price=?,quantity=? where id=?
//	}
	public List<Product> getAllProducts() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Product");
		List<Product> products =query.list();
		return products;
	}

	public void saveOrUpdate(Product product)
	{
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
	}

	public List<Category> getAllCategories() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		return categories;
	}
	
}
