// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.service.api;

import com.disid.restful.model.Customer;
import com.disid.restful.model.CustomerFindByFirstNameAndLastName;
import com.disid.restful.service.api.CustomerService;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect CustomerService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Customer
     */
    public abstract Customer CustomerService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     */
    public abstract void CustomerService.delete(Customer customer);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Customer> CustomerService.save(Iterable<Customer> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void CustomerService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Customer
     */
    public abstract Customer CustomerService.save(Customer entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Customer
     */
    public abstract Customer CustomerService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Customer> CustomerService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Customer> CustomerService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long CustomerService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Customer> CustomerService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Customer> CustomerService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @param ordersToAdd
     * @return Customer
     */
    public abstract Customer CustomerService.addToOrders(Customer customer, Iterable<Long> ordersToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @param ordersToRemove
     * @return Customer
     */
    public abstract Customer CustomerService.removeFromOrders(Customer customer, Iterable<Long> ordersToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @param orders
     * @return Customer
     */
    public abstract Customer CustomerService.setOrders(Customer customer, Iterable<Long> orders);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Customer> CustomerService.findByFirstNameAndLastName(CustomerFindByFirstNameAndLastName formBean, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @return Long
     */
    public abstract long CustomerService.countByFirstNameAndLastName(CustomerFindByFirstNameAndLastName formBean);
    
}
