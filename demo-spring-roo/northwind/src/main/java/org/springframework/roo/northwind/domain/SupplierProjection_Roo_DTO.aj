// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.domain;

import io.springlets.format.EntityFormat;
import org.springframework.roo.northwind.domain.SupplierProjection;

privileged aspect SupplierProjection_Roo_DTO {
    
    declare @type: SupplierProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param supplierId
     * @param countryId
     * @param regionId
     * @param cityId
     * @param companyName
     * @param contactName
     * @param contactTitle
     * @param address
     * @param countryDescription
     * @param regionDescription
     * @param cityDescription
     * @param postalCode
     * @param phone
     * @param fax
     * @param web
     */
    public SupplierProjection.new(Long supplierId, Long countryId, Long regionId, Long cityId, String companyName, String contactName, String contactTitle, String address, String countryDescription, String regionDescription, String cityDescription, String postalCode, String phone, String fax, String web) {
        this.supplierId = supplierId;
        this.countryId = countryId;
        this.regionId = regionId;
        this.cityId = cityId;
        this.companyName = companyName;
        this.contactName = contactName;
        this.contactTitle = contactTitle;
        this.address = address;
        this.countryDescription = countryDescription;
        this.regionDescription = regionDescription;
        this.cityDescription = cityDescription;
        this.postalCode = postalCode;
        this.phone = phone;
        this.fax = fax;
        this.web = web;
    }

}
