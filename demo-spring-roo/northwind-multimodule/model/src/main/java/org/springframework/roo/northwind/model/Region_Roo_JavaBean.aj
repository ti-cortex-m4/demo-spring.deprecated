// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import java.util.Objects;
import java.util.Set;
import org.springframework.roo.northwind.model.City;
import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Party;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.model.Store;
import org.springframework.roo.northwind.model.Supplier;

privileged aspect Region_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Region.getId() {
        return this.id;
    }
    
    /**
     * Gets version value
     * 
     * @return Long
     */
    public Long Region.getVersion() {
        return this.version;
    }
    
    /**
     * Gets country value
     * 
     * @return Country
     */
    public Country Region.getCountry() {
        return this.country;
    }
    
    /**
     * Gets description value
     * 
     * @return String
     */
    public String Region.getDescription() {
        return this.description;
    }
    
    /**
     * Gets cities value
     * 
     * @return Set
     */
    public Set<City> Region.getCities() {
        return this.cities;
    }
    
    /**
     * Gets parties value
     * 
     * @return Set
     */
    public Set<Party> Region.getParties() {
        return this.parties;
    }
    
    /**
     * Gets customerOrders value
     * 
     * @return Set
     */
    public Set<CustomerOrder> Region.getCustomerOrders() {
        return this.customerOrders;
    }
    
    /**
     * Gets stores value
     * 
     * @return Set
     */
    public Set<Store> Region.getStores() {
        return this.stores;
    }
    
    /**
     * Gets suppliers value
     * 
     * @return Set
     */
    public Set<Supplier> Region.getSuppliers() {
        return this.suppliers;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean Region.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Region)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Region) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Region.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Region.toString() {
        return "Region {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", description='" + description + '\'' + "}" + super.toString();
    }
    
}
