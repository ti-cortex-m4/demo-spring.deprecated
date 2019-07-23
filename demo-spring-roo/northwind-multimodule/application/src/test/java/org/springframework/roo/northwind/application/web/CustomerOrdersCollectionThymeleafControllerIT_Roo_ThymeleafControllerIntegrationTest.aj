// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.boot.test.autoconfigure.web.servlet.SpringletsWebMvcTest;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.roo.northwind.application.web.CustomerOrdersCollectionThymeleafController;
import org.springframework.roo.northwind.application.web.CustomerOrdersCollectionThymeleafControllerIT;
import org.springframework.roo.northwind.model.dod.CustomerOrderFactory;
import org.springframework.roo.northwind.service.api.CustomerOrderService;
import org.springframework.roo.northwind.service.api.OrderDetailService;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

privileged aspect CustomerOrdersCollectionThymeleafControllerIT_Roo_ThymeleafControllerIntegrationTest {
    
    declare @type: CustomerOrdersCollectionThymeleafControllerIT: @RunWith(SpringRunner.class);
    
    declare @type: CustomerOrdersCollectionThymeleafControllerIT: @SpringletsWebMvcTest(controllers = CustomerOrdersCollectionThymeleafController.class, secure = false);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    public MockMvc CustomerOrdersCollectionThymeleafControllerIT.mvc;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @MockBean
    public CustomerOrderService CustomerOrdersCollectionThymeleafControllerIT.customerOrderServiceService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @MockBean
    public OrderDetailService CustomerOrdersCollectionThymeleafControllerIT.orderDetailServiceService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public CustomerOrderFactory CustomerOrdersCollectionThymeleafControllerIT.factory = new CustomerOrderFactory();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MockMvc
     */
    public MockMvc CustomerOrdersCollectionThymeleafControllerIT.getMvc() {
        return mvc;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderService
     */
    public CustomerOrderService CustomerOrdersCollectionThymeleafControllerIT.getCustomerOrderServiceService() {
        return customerOrderServiceService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return OrderDetailService
     */
    public OrderDetailService CustomerOrdersCollectionThymeleafControllerIT.getOrderDetailServiceService() {
        return orderDetailServiceService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderFactory
     */
    public CustomerOrderFactory CustomerOrdersCollectionThymeleafControllerIT.getFactory() {
        return factory;
    }
    
    /**
     * Test method example. To be implemented by developer.
     * 
     */
    @Test
    public void CustomerOrdersCollectionThymeleafControllerIT.testMethodExample() {
        // Setup
        // Previous tasks
        
        // Exercise
        // Execute method to test
        
        // Verify
        // Check results with assertions
    }
    
}
