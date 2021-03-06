// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.domain;

import io.springlets.format.EntityFormat;
import java.math.BigDecimal;
import java.util.Calendar;
import org.springframework.roo.northwind.domain.PurchaseOrderProjection;

privileged aspect PurchaseOrderProjection_Roo_DTO {
    
    declare @type: PurchaseOrderProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param purchaseOrderId
     * @param productId
     * @param employeeId
     * @param orderDate
     * @param employeeName
     * @param quantity
     * @param totalCost
     */
    public PurchaseOrderProjection.new(Long purchaseOrderId, Long productId, Long employeeId, Calendar orderDate, String employeeName, Integer quantity, BigDecimal totalCost) {
        this.purchaseOrderId = purchaseOrderId;
        this.productId = productId;
        this.employeeId = employeeId;
        this.orderDate = orderDate;
        this.employeeName = employeeName;
        this.quantity = quantity;
        this.totalCost = totalCost;
    }

}
