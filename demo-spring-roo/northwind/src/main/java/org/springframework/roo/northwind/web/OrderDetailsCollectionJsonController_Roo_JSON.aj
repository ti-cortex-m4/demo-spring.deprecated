// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.web;

import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.domain.OrderDetail;
import org.springframework.roo.northwind.service.api.OrderDetailService;
import org.springframework.roo.northwind.web.OrderDetailsCollectionJsonController;
import org.springframework.roo.northwind.web.OrderDetailsItemJsonController;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect OrderDetailsCollectionJsonController_Roo_JSON {
    
    declare @type: OrderDetailsCollectionJsonController: @RestController;
    
    declare @type: OrderDetailsCollectionJsonController: @RequestMapping(value = "/api/orderdetails", name = "OrderDetailsCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private OrderDetailService OrderDetailsCollectionJsonController.orderDetailService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param orderDetailService
     */
    @Autowired
    public OrderDetailsCollectionJsonController.new(OrderDetailService orderDetailService) {
        this.orderDetailService = orderDetailService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return OrderDetailService
     */
    public OrderDetailService OrderDetailsCollectionJsonController.getOrderDetailService() {
        return orderDetailService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetailService
     */
    public void OrderDetailsCollectionJsonController.setOrderDetailService(OrderDetailService orderDetailService) {
        this.orderDetailService = orderDetailService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<OrderDetail>> OrderDetailsCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<OrderDetail> orderDetails = getOrderDetailService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(orderDetails);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents OrderDetailsCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(OrderDetailsCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetail
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> OrderDetailsCollectionJsonController.create(@Valid @RequestBody OrderDetail orderDetail, BindingResult result) {
        
        if (orderDetail.getId() != null || orderDetail.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        OrderDetail newOrderDetail = getOrderDetailService().save(orderDetail);
        UriComponents showURI = OrderDetailsItemJsonController.showURI(newOrderDetail);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetails
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> OrderDetailsCollectionJsonController.createBatch(@Valid @RequestBody Collection<OrderDetail> orderDetails, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getOrderDetailService().save(orderDetails);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetails
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> OrderDetailsCollectionJsonController.updateBatch(@Valid @RequestBody Collection<OrderDetail> orderDetails, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getOrderDetailService().save(orderDetails);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> OrderDetailsCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getOrderDetailService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
