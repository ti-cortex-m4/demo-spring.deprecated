// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.Set;
import org.springframework.roo.northwind.domain.City;
import org.springframework.roo.northwind.domain.Country;
import org.springframework.roo.northwind.domain.Product;
import org.springframework.roo.northwind.domain.Region;
import org.springframework.roo.northwind.web.CityDeserializer;
import org.springframework.roo.northwind.web.CountryDeserializer;
import org.springframework.roo.northwind.web.RegionDeserializer;
import org.springframework.roo.northwind.web.SupplierJsonMixin;

privileged aspect SupplierJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Product> SupplierJsonMixin.products;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CityDeserializer.class)
    private City SupplierJsonMixin.city;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CountryDeserializer.class)
    private Country SupplierJsonMixin.country;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = RegionDeserializer.class)
    private Region SupplierJsonMixin.region;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Product> SupplierJsonMixin.getProducts() {
        return products;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param products
     */
    public void SupplierJsonMixin.setProducts(Set<Product> products) {
        this.products = products;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return City
     */
    public City SupplierJsonMixin.getCity() {
        return city;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     */
    public void SupplierJsonMixin.setCity(City city) {
        this.city = city;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Country
     */
    public Country SupplierJsonMixin.getCountry() {
        return country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     */
    public void SupplierJsonMixin.setCountry(Country country) {
        this.country = country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Region
     */
    public Region SupplierJsonMixin.getRegion() {
        return region;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     */
    public void SupplierJsonMixin.setRegion(Region region) {
        this.region = region;
    }
    
}
