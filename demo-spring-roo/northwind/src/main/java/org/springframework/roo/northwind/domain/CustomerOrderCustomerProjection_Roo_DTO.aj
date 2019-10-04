// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.domain;

import io.springlets.format.EntityFormat;
import java.math.BigDecimal;
import java.util.Calendar;
import org.springframework.roo.northwind.domain.CustomerOrderCustomerProjection;

privileged aspect CustomerOrderCustomerProjection_Roo_DTO {
    
    declare @type: CustomerOrderCustomerProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param employeeId
     * @param customerId
     * @param employeeName
     * @param fromDate
     * @param thruDate
     * @param customerCompanyName
     * @param total
     */
    public CustomerOrderCustomerProjection.new(Long employeeId, Long customerId, String employeeName, Calendar fromDate, Calendar thruDate, String customerCompanyName, BigDecimal total) {
        this.employeeId = employeeId;
        this.customerId = customerId;
        this.employeeName = employeeName;
        this.fromDate = fromDate;
        this.thruDate = thruDate;
        this.customerCompanyName = customerCompanyName;
        this.total = total;
    }

}