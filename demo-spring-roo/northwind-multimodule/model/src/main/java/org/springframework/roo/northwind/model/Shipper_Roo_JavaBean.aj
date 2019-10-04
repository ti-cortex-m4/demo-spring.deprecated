// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import java.util.Objects;
import java.util.Set;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Shipper;

privileged aspect Shipper_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Shipper.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return Shipper
     */
    public Shipper Shipper.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Long
     */
    public Long Shipper.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return Shipper
     */
    public Shipper Shipper.setVersion(Long version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets companyName value
     * 
     * @return String
     */
    public String Shipper.getCompanyName() {
        return this.companyName;
    }
    
    /**
     * Sets companyName value
     * 
     * @param companyName
     * @return Shipper
     */
    public Shipper Shipper.setCompanyName(String companyName) {
        this.companyName = companyName;
        return this;
    }
    
    /**
     * Gets phone value
     * 
     * @return String
     */
    public String Shipper.getPhone() {
        return this.phone;
    }
    
    /**
     * Sets phone value
     * 
     * @param phone
     * @return Shipper
     */
    public Shipper Shipper.setPhone(String phone) {
        this.phone = phone;
        return this;
    }
    
    /**
     * Gets customerOrders value
     * 
     * @return Set
     */
    public Set<CustomerOrder> Shipper.getCustomerOrders() {
        return this.customerOrders;
    }
    
    /**
     * Sets customerOrders value
     * 
     * @param customerOrders
     * @return Shipper
     */
    public Shipper Shipper.setCustomerOrders(Set<CustomerOrder> customerOrders) {
        this.customerOrders = customerOrders;
        return this;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean Shipper.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Shipper)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Shipper) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Shipper.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Shipper.toString() {
        return "Shipper {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", companyName='" + companyName + '\'' + 
                ", phone='" + phone + '\'' + "}" + super.toString();
    }
    
}