// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.domain;

import io.springlets.format.EntityFormat;
import org.springframework.roo.northwind.domain.ShipperProjection;

privileged aspect ShipperProjection_Roo_Projection {
    
    declare @type: ShipperProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param id
     * @param companyName
     * @param phone
     */
    public ShipperProjection.new(Long id, String companyName, String phone) {
        this.id = id;
        this.companyName = companyName;
        this.phone = phone;
    }

}
