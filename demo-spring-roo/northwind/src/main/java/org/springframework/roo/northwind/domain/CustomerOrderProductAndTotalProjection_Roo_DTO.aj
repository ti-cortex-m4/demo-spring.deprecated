// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.domain;

import io.springlets.format.EntityFormat;
import java.math.BigDecimal;
import org.springframework.roo.northwind.domain.CustomerOrderProductAndTotalProjection;

privileged aspect CustomerOrderProductAndTotalProjection_Roo_DTO {
    
    declare @type: CustomerOrderProductAndTotalProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param productId
     * @param productName
     * @param quantity
     * @param total
     */
    public CustomerOrderProductAndTotalProjection.new(Long productId, String productName, Integer quantity, BigDecimal total) {
        this.productId = productId;
        this.productName = productName;
        this.quantity = quantity;
        this.total = total;
    }

}
