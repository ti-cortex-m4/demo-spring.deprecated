// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import java.util.Set;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlID;
import javax.xml.bind.annotation.XmlIDREF;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.roo.northwind.model.City;
import org.springframework.roo.northwind.model.City_Roo_Jaxb_Entity;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Party;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.model.Store;
import org.springframework.roo.northwind.model.Supplier;

privileged aspect City_Roo_Jaxb_Entity {
    
    /*
     * This Aspect takes the lower precedence
     */
    declare precedence: *, City_Roo_Jaxb_Entity;
    
    declare @type: City: @XmlRootElement(name = "city", namespace = "http://ws.northwind.roo.springframework.org/");
    
    declare @method: public Set<Party> City.getParties(): @XmlIDREF;
    
    declare @method: public Set<Party> City.getParties(): @XmlElement(name = "party");
    
    declare @method: public Set<Party> City.getParties(): @XmlElementWrapper(name = "parties");
    
    declare @method: public Set<CustomerOrder> City.getCustomerOrders(): @XmlIDREF;
    
    declare @method: public Set<CustomerOrder> City.getCustomerOrders(): @XmlElement(name = "customerorder");
    
    declare @method: public Set<CustomerOrder> City.getCustomerOrders(): @XmlElementWrapper(name = "customerorders");
    
    declare @method: public Set<Store> City.getStores(): @XmlIDREF;
    
    declare @method: public Set<Store> City.getStores(): @XmlElement(name = "store");
    
    declare @method: public Set<Store> City.getStores(): @XmlElementWrapper(name = "stores");
    
    declare @method: public Set<Supplier> City.getSuppliers(): @XmlIDREF;
    
    declare @method: public Set<Supplier> City.getSuppliers(): @XmlElement(name = "supplier");
    
    declare @method: public Set<Supplier> City.getSuppliers(): @XmlElementWrapper(name = "suppliers");
    
    declare @method: public Region City.getRegion(): @XmlIDREF;
    
    declare @method: public Region City.getRegion(): @XmlElement(name = "region");
    
    declare @method: public Long City.getId(): @XmlTransient;
    
    /**
     * Must return an unique ID across all entities
     * 
     * @return String
     */
    @XmlID
    @XmlAttribute(name = "id")
    public String City.getXmlIdentityInfo() {
        return getClass().getName() + ":" + getId();
    }
    
}
