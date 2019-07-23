// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.northwind.domain.Supplier;
import org.springframework.roo.northwind.service.api.SupplierService;
import org.springframework.roo.northwind.web.SupplierDeserializer;

privileged aspect SupplierDeserializer_Roo_EntityDeserializer {
    
    declare @type: SupplierDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return SupplierService
     */
    public SupplierService SupplierDeserializer.getSupplierService() {
        return supplierService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplierService
     */
    public void SupplierDeserializer.setSupplierService(SupplierService supplierService) {
        this.supplierService = supplierService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService SupplierDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void SupplierDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Supplier
     * @throws IOException
     */
    public Supplier SupplierDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Supplier supplier = supplierService.findOne(id);
        if (supplier == null) {
            throw new NotFoundException("Supplier not found");
        }
        return supplier;
    }
    
}
