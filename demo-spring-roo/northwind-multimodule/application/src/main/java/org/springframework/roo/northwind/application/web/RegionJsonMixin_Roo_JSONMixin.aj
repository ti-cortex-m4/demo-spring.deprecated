// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.Set;
import org.springframework.roo.northwind.application.web.CountryDeserializer;
import org.springframework.roo.northwind.application.web.RegionJsonMixin;
import org.springframework.roo.northwind.model.City;
import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Party;
import org.springframework.roo.northwind.model.Store;
import org.springframework.roo.northwind.model.Supplier;

privileged aspect RegionJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<City> RegionJsonMixin.cities;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<CustomerOrder> RegionJsonMixin.customerOrders;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Party> RegionJsonMixin.parties;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Store> RegionJsonMixin.stores;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Supplier> RegionJsonMixin.suppliers;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CountryDeserializer.class)
    private Country RegionJsonMixin.country;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<City> RegionJsonMixin.getCities() {
        return cities;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cities
     */
    public void RegionJsonMixin.setCities(Set<City> cities) {
        this.cities = cities;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<CustomerOrder> RegionJsonMixin.getCustomerOrders() {
        return customerOrders;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrders
     */
    public void RegionJsonMixin.setCustomerOrders(Set<CustomerOrder> customerOrders) {
        this.customerOrders = customerOrders;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Party> RegionJsonMixin.getParties() {
        return parties;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param parties
     */
    public void RegionJsonMixin.setParties(Set<Party> parties) {
        this.parties = parties;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Store> RegionJsonMixin.getStores() {
        return stores;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stores
     */
    public void RegionJsonMixin.setStores(Set<Store> stores) {
        this.stores = stores;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Supplier> RegionJsonMixin.getSuppliers() {
        return suppliers;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param suppliers
     */
    public void RegionJsonMixin.setSuppliers(Set<Supplier> suppliers) {
        this.suppliers = suppliers;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Country
     */
    public Country RegionJsonMixin.getCountry() {
        return country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     */
    public void RegionJsonMixin.setCountry(Country country) {
        this.country = country;
    }
    
}
