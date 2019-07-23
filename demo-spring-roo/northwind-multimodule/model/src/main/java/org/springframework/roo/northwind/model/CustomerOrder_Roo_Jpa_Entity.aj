// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.model;

import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import javax.persistence.Table;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.OrderDetail;
import org.springframework.util.Assert;

privileged aspect CustomerOrder_Roo_Jpa_Entity {
    
    declare @type: CustomerOrder: @Entity;
    
    declare @type: CustomerOrder: @Table(name = "NW_CUSTOMER_ORDERS");
    
    declare @type: CustomerOrder: @EntityFormat(message = "customerorder_format");
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrder.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrder.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetailsToAdd
     */
    public void CustomerOrder.addToOrderDetails(Iterable<OrderDetail> orderDetailsToAdd) {
        Assert.notNull(orderDetailsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (OrderDetail item : orderDetailsToAdd) {
            this.orderDetails.add(item);
            item.setCustomerOrder(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetailsToRemove
     */
    public void CustomerOrder.removeFromOrderDetails(Iterable<OrderDetail> orderDetailsToRemove) {
        Assert.notNull(orderDetailsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (OrderDetail item : orderDetailsToRemove) {
            this.orderDetails.remove(item);
            item.setCustomerOrder(null);
        }
    }
    
}
