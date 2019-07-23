// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.application.web.PurchaseOrdersCollectionJsonController;
import org.springframework.roo.northwind.application.web.PurchaseOrdersItemJsonController;
import org.springframework.roo.northwind.model.PurchaseOrder;
import org.springframework.roo.northwind.service.api.PurchaseOrderService;
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

privileged aspect PurchaseOrdersCollectionJsonController_Roo_JSON {
    
    declare @type: PurchaseOrdersCollectionJsonController: @RestController;
    
    declare @type: PurchaseOrdersCollectionJsonController: @RequestMapping(value = "/api/purchaseorders", name = "PurchaseOrdersCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PurchaseOrderService PurchaseOrdersCollectionJsonController.purchaseOrderService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param purchaseOrderService
     */
    @Autowired
    public PurchaseOrdersCollectionJsonController.new(PurchaseOrderService purchaseOrderService) {
        this.purchaseOrderService = purchaseOrderService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return PurchaseOrderService
     */
    public PurchaseOrderService PurchaseOrdersCollectionJsonController.getPurchaseOrderService() {
        return purchaseOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param purchaseOrderService
     */
    public void PurchaseOrdersCollectionJsonController.setPurchaseOrderService(PurchaseOrderService purchaseOrderService) {
        this.purchaseOrderService = purchaseOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<PurchaseOrder>> PurchaseOrdersCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<PurchaseOrder> purchaseOrders = getPurchaseOrderService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(purchaseOrders);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents PurchaseOrdersCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(PurchaseOrdersCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param purchaseOrder
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> PurchaseOrdersCollectionJsonController.create(@Valid @RequestBody PurchaseOrder purchaseOrder, BindingResult result) {
        
        if (purchaseOrder.getId() != null || purchaseOrder.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        PurchaseOrder newPurchaseOrder = getPurchaseOrderService().save(purchaseOrder);
        UriComponents showURI = PurchaseOrdersItemJsonController.showURI(newPurchaseOrder);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param purchaseOrders
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> PurchaseOrdersCollectionJsonController.createBatch(@Valid @RequestBody Collection<PurchaseOrder> purchaseOrders, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getPurchaseOrderService().save(purchaseOrders);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param purchaseOrders
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> PurchaseOrdersCollectionJsonController.updateBatch(@Valid @RequestBody Collection<PurchaseOrder> purchaseOrders, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getPurchaseOrderService().save(purchaseOrders);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> PurchaseOrdersCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getPurchaseOrderService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}
