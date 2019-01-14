package com.mit.dao;

import com.mit.models.Customer;

public interface CustomerDao {
void registerCustomer(Customer customer);
boolean isEmailUnique(String email);
}
