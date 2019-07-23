// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Set;
import org.springframework.roo.northwind.application.web.CountryJsonMixin;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Party;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.model.Store;
import org.springframework.roo.northwind.model.Supplier;

privileged aspect CountryJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<CustomerOrder> CountryJsonMixin.customerOrders;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Party> CountryJsonMixin.parties;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Region> CountryJsonMixin.regions;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Store> CountryJsonMixin.stores;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Supplier> CountryJsonMixin.suppliers;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<CustomerOrder> CountryJsonMixin.getCustomerOrders() {
        return customerOrders;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrders
     */
    public void CountryJsonMixin.setCustomerOrders(Set<CustomerOrder> customerOrders) {
        this.customerOrders = customerOrders;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Party> CountryJsonMixin.getParties() {
        return parties;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param parties
     */
    public void CountryJsonMixin.setParties(Set<Party> parties) {
        this.parties = parties;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Region> CountryJsonMixin.getRegions() {
        return regions;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regions
     */
    public void CountryJsonMixin.setRegions(Set<Region> regions) {
        this.regions = regions;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Store> CountryJsonMixin.getStores() {
        return stores;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stores
     */
    public void CountryJsonMixin.setStores(Set<Store> stores) {
        this.stores = stores;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Supplier> CountryJsonMixin.getSuppliers() {
        return suppliers;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param suppliers
     */
    public void CountryJsonMixin.setSuppliers(Set<Supplier> suppliers) {
        this.suppliers = suppliers;
    }
    
}
