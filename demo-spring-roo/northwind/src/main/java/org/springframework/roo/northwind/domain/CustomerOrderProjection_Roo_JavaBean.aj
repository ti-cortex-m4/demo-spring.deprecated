// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.domain;

import java.math.BigDecimal;
import java.util.Calendar;
import org.springframework.roo.northwind.domain.CustomerOrderProjection;
import org.springframework.roo.northwind.domain.Status;

privileged aspect CustomerOrderProjection_Roo_JavaBean {
    
    /**
     * Gets orderId value
     * 
     * @return Long
     */
    public Long CustomerOrderProjection.getOrderId() {
        return this.orderId;
    }
    
    /**
     * Gets employeeId value
     * 
     * @return Long
     */
    public Long CustomerOrderProjection.getEmployeeId() {
        return this.employeeId;
    }
    
    /**
     * Gets customerId value
     * 
     * @return Long
     */
    public Long CustomerOrderProjection.getCustomerId() {
        return this.customerId;
    }
    
    /**
     * Gets orderDate value
     * 
     * @return Calendar
     */
    public Calendar CustomerOrderProjection.getOrderDate() {
        return this.orderDate;
    }
    
    /**
     * Gets employeeName value
     * 
     * @return String
     */
    public String CustomerOrderProjection.getEmployeeName() {
        return this.employeeName;
    }
    
    /**
     * Gets customerCompanyName value
     * 
     * @return String
     */
    public String CustomerOrderProjection.getCustomerCompanyName() {
        return this.customerCompanyName;
    }
    
    /**
     * Gets status value
     * 
     * @return Status
     */
    public Status CustomerOrderProjection.getStatus() {
        return this.status;
    }
    
    /**
     * Gets shippedDate value
     * 
     * @return Calendar
     */
    public Calendar CustomerOrderProjection.getShippedDate() {
        return this.shippedDate;
    }
    
    /**
     * Gets freight value
     * 
     * @return BigDecimal
     */
    public BigDecimal CustomerOrderProjection.getFreight() {
        return this.freight;
    }
    
}
