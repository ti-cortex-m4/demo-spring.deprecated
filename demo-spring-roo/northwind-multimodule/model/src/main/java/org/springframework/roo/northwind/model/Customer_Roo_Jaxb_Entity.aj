// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import java.util.Set;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlIDREF;
import javax.xml.bind.annotation.XmlRootElement;
import org.springframework.roo.northwind.model.Customer;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Customer_Roo_Jaxb_Entity;

privileged aspect Customer_Roo_Jaxb_Entity {
    
    /*
     * This Aspect takes the lower precedence
     */
    declare precedence: *, Customer_Roo_Jaxb_Entity;
    
    declare @type: Customer: @XmlRootElement(name = "customer", namespace = "http://ws.northwind.roo.springframework.org/");
    
    declare @method: public Set<CustomerOrder> Customer.getCustomerOrders(): @XmlIDREF;
    
    declare @method: public Set<CustomerOrder> Customer.getCustomerOrders(): @XmlElement(name = "customerorder");
    
    declare @method: public Set<CustomerOrder> Customer.getCustomerOrders(): @XmlElementWrapper(name = "customerorders");
    
}