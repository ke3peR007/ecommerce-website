package com.mit.EstoreBackEnd;

import java.util.List;

/**
 * Hello world!
 *
 */
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.mit.configuration.DBConfig;
import com.mit.dao.ProductDao;
import com.mit.dao.ProductDaoImpl;
import com.mit.models.Product;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        
        //CREATE SPRING CONTAINER , CONFIGURATION DETAILS TO THE CONTAINER
        ApplicationContext context=
        		new AnnotationConfigApplicationContext(DBConfig.class,ProductDaoImpl.class);
      ProductDao productDao = (ProductDao)context.getBean("productDaoImpl");
       
      Product product = new Product();
      product.setProductname("beats");    
      product.setDescription(" beats headphone");
      product.setPrice(7000);
      product.setQuantity(10);
//      productDao.addProduct(product);
      
        
//      Product product=productDao.getProduct(1);
//      System.out.println(product);
//    if(product!=null){
//    System.out.println(product.getId());
//    System.out.println(product.getProductname());
//    System.out.println(product.getDescription());
//    System.out.println(product.getPrice());
//    System.out.println(product.getQuantity());
//    }else{
//  	  System.out.println("Product id  not found");
//    }
      
      List<Product> products=productDao.getAllProducts();
      System.out.println(products);
      System.out.println(products.size());
        
        
        
    }
}