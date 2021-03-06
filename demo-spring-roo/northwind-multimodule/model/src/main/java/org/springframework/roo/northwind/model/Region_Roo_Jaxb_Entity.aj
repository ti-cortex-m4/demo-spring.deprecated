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
import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Party;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.model.Region_Roo_Jaxb_Entity;
import org.springframework.roo.northwind.model.Store;
import org.springframework.roo.northwind.model.Supplier;

privileged aspect Region_Roo_Jaxb_Entity {
    
    /*
     * This Aspect takes the lower precedence
     */
    declare precedence: *, Region_Roo_Jaxb_Entity;
    
    declare @type: Region: @XmlRootElement(name = "region", namespace = "http://ws.northwind.roo.springframework.org/");
    
    declare @method: public Set<City> Region.getCities(): @XmlIDREF;
    
    declare @method: public Set<City> Region.getCities(): @XmlElement(name = "city");
    
    declare @method: public Set<City> Region.getCities(): @XmlElementWrapper(name = "cities");
    
    declare @method: public Set<Party> Region.getParties(): @XmlIDREF;
    
    declare @method: public Set<Party> Region.getParties(): @XmlElement(name = "party");
    
    declare @method: public Set<Party> Region.getParties(): @XmlElementWrapper(name = "parties");
    
    declare @method: public Set<CustomerOrder> Region.getCustomerOrders(): @XmlIDREF;
    
    declare @method: public Set<CustomerOrder> Region.getCustomerOrders(): @XmlElement(name = "customerorder");
    
    declare @method: public Set<CustomerOrder> Region.getCustomerOrders(): @XmlElementWrapper(name = "customerorders");
    
    declare @method: public Set<Store> Region.getStores(): @XmlIDREF;
    
    declare @method: public Set<Store> Region.getStores(): @XmlElement(name = "store");
    
    declare @method: public Set<Store> Region.getStores(): @XmlElementWrapper(name = "stores");
    
    declare @method: public Set<Supplier> Region.getSuppliers(): @XmlIDREF;
    
    declare @method: public Set<Supplier> Region.getSuppliers(): @XmlElement(name = "supplier");
    
    declare @method: public Set<Supplier> Region.getSuppliers(): @XmlElementWrapper(name = "suppliers");
    
    declare @method: public Country Region.getCountry(): @XmlIDREF;
    
    declare @method: public Country Region.getCountry(): @XmlElement(name = "country");
    
    declare @method: public Long Region.getId(): @XmlTransient;
    
    /**
     * Must return an unique ID across all entities
     * 
     * @return String
     */
    @XmlID
    @XmlAttribute(name = "id")
    public String Region.getXmlIdentityInfo() {
        return getClass().getName() + ":" + getId();
    }
    
}
