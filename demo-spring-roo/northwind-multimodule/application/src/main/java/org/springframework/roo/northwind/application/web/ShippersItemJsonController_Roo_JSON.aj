// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.application.web.ShippersItemJsonController;
import org.springframework.roo.northwind.model.Shipper;
import org.springframework.roo.northwind.service.api.ShipperService;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect ShippersItemJsonController_Roo_JSON {
    
    declare @type: ShippersItemJsonController: @RestController;
    
    declare @type: ShippersItemJsonController: @RequestMapping(value = "/api/shippers/{shipper}", name = "ShippersItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ShipperService ShippersItemJsonController.shipperService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param shipperService
     */
    @Autowired
    public ShippersItemJsonController.new(ShipperService shipperService) {
        this.shipperService = shipperService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ShipperService
     */
    public ShipperService ShippersItemJsonController.getShipperService() {
        return shipperService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipperService
     */
    public void ShippersItemJsonController.setShipperService(ShipperService shipperService) {
        this.shipperService = shipperService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Shipper
     */
    @ModelAttribute
    public Shipper ShippersItemJsonController.getShipper(@PathVariable("shipper") Long id) {
        Shipper shipper = shipperService.findOne(id);
        if (shipper == null) {
            throw new NotFoundException(String.format("Shipper with identifier '%s' not found",id));
        }
        return shipper;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ShippersItemJsonController.show(@ModelAttribute Shipper shipper) {
        return ResponseEntity.ok(shipper);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @return UriComponents
     */
    public static UriComponents ShippersItemJsonController.showURI(Shipper shipper) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ShippersItemJsonController.class).show(shipper))
            .buildAndExpand(shipper.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedShipper
     * @param shipper
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ShippersItemJsonController.update(@ModelAttribute Shipper storedShipper, @Valid @RequestBody Shipper shipper, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        shipper.setId(storedShipper.getId());
        getShipperService().save(shipper);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ShippersItemJsonController.delete(@ModelAttribute Shipper shipper) {
        getShipperService().delete(shipper);
        return ResponseEntity.ok().build();
    }
    
}
