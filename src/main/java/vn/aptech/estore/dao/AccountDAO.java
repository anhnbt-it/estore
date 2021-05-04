/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.aptech.estore.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Optional;
import vn.aptech.estore.entities.Employee;
import vn.aptech.estore.entities.Customer;

/**
 *
 * @author anhnbt
 */
public interface AccountDAO extends DAO<Employee, Integer>{
    
    Optional<Customer> findFirstByUsernameAndPassword(String username, String password) throws SQLException;
    
    Optional<Employee> findFirstByUserNameAndPassword(String username, String password) throws SQLException;
    
    List<Customer> findAllCustomer() throws SQLException;
    
    Optional<Customer> findFirstByEmail(String email);
    
}