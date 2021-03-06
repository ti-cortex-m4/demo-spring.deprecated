// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.domain;

import io.springlets.format.EntityFormat;
import org.springframework.roo.northwind.domain.OrderDetailCustomerProjection;
import org.springframework.roo.northwind.domain.Status;

privileged aspect OrderDetailCustomerProjection_Roo_DTO {
    
    declare @type: OrderDetailCustomerProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param orderDetailId
     * @param customerName
     * @param status
     * @param quantity
     * @param productName
     */
    public OrderDetailCustomerProjection.new(Long orderDetailId, String customerName, Status status, Integer quantity, String productName) {
        this.orderDetailId = orderDetailId;
        this.customerName = customerName;
        this.status = status;
        this.quantity = quantity;
        this.productName = productName;
    }

}
