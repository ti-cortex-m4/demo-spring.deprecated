// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.domain;

import io.springlets.format.EntityFormat;
import org.springframework.roo.northwind.domain.CategoryProjection;

privileged aspect CategoryProjection_Roo_DTO {
    
    declare @type: CategoryProjection: @EntityFormat;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param categoryId
     * @param name
     * @param description
     */
    public CategoryProjection.new(Long categoryId, String name, String description) {
        this.categoryId = categoryId;
        this.name = name;
        this.description = description;
    }

}
