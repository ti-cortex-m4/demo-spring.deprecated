// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.domain;

import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import javax.persistence.Table;
import org.springframework.roo.northwind.domain.Report;

privileged aspect Report_Roo_Jpa_Entity {
    
    declare @type: Report: @Entity;
    
    declare @type: Report: @Table(name = "NW_REPORTS");
    
    declare @type: Report: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Report.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Report.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
}
