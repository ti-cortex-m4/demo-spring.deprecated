// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.web;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import org.springframework.roo.northwind.domain.City;
import org.springframework.roo.northwind.domain.Country;
import org.springframework.roo.northwind.domain.Region;
import org.springframework.roo.northwind.web.CityDeserializer;
import org.springframework.roo.northwind.web.CountryDeserializer;
import org.springframework.roo.northwind.web.PartyJsonMixin;
import org.springframework.roo.northwind.web.RegionDeserializer;

privileged aspect PartyJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CityDeserializer.class)
    private City PartyJsonMixin.city;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CountryDeserializer.class)
    private Country PartyJsonMixin.country;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = RegionDeserializer.class)
    private Region PartyJsonMixin.region;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return City
     */
    public City PartyJsonMixin.getCity() {
        return city;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     */
    public void PartyJsonMixin.setCity(City city) {
        this.city = city;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Country
     */
    public Country PartyJsonMixin.getCountry() {
        return country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     */
    public void PartyJsonMixin.setCountry(Country country) {
        this.country = country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Region
     */
    public Region PartyJsonMixin.getRegion() {
        return region;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     */
    public void PartyJsonMixin.setRegion(Region region) {
        this.region = region;
    }
    
}
