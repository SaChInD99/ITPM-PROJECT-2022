package com.lorenzo.interfaces;

import java.util.ArrayList;

import com.lorenzo.model.Customer;

public interface Icustomer {
	public ArrayList<Customer> getCustomerList();
	public Customer getCustomer(int id);
	public boolean addCustomer(Customer customer);
	public boolean updateCustomer (Customer customer);
	public boolean deleteCustomer(int id);
}