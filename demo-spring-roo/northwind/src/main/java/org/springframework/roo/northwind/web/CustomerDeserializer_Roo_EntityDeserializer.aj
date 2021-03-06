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
import org.springframework.roo.northwind.domain.Customer;
import org.springframework.roo.northwind.service.api.CustomerService;
import org.springframework.roo.northwind.web.CustomerDeserializer;

privileged aspect CustomerDeserializer_Roo_EntityDeserializer {
    
    declare @type: CustomerDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerService
     */
    public CustomerService CustomerDeserializer.getCustomerService() {
        return customerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerService
     */
    public void CustomerDeserializer.setCustomerService(CustomerService customerService) {
        this.customerService = customerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService CustomerDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void CustomerDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Customer
     * @throws IOException
     */
    public Customer CustomerDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Customer customer = customerService.findOne(id);
        if (customer == null) {
            throw new NotFoundException("Customer not found");
        }
        return customer;
    }
    
}
