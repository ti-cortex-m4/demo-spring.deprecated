// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.model;

import com.springsource.petclinic.model.VisitTest;
import com.springsource.petclinic.model.dod.VisitFactory;

privileged aspect VisitTest_Roo_JpaUnitTest {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private VisitFactory VisitTest.visitFactory = new VisitFactory();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return VisitFactory
     */
    public VisitFactory VisitTest.getVisitFactory() {
        return visitFactory;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param visitFactory
     */
    public void VisitTest.setVisitFactory(VisitFactory visitFactory) {
        this.visitFactory = visitFactory;
    }
    
}