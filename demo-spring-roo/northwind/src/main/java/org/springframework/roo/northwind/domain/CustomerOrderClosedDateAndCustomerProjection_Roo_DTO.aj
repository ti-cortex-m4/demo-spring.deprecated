// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.domain;

import io.springlets.format.EntityFormat;
import java.math.BigDecimal;
import java.util.Calendar;
import org.springframework.roo.northwind.domain.CustomerOrderClosedDateAndCustomerProjection;

privileged aspect CustomerOrderClosedDateAndCustomerProjection_Roo_DTO {
    
    declare @type: CustomerOrderClosedDateAndCustomerProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param customerId
     * @param closedDate
     * @param customerCompanyName
     * @param total
     */
    public CustomerOrderClosedDateAndCustomerProjection.new(Long customerId, Calendar closedDate, String customerCompanyName, BigDecimal total) {
        this.customerId = customerId;
        this.closedDate = closedDate;
        this.customerCompanyName = customerCompanyName;
        this.total = total;
    }

}
