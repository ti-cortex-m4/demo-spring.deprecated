// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.model.dod;

import com.springsource.petclinic.model.Vet;
import com.springsource.petclinic.model.Visit;
import com.springsource.petclinic.model.dod.VisitFactory;
import java.util.Date;

privileged aspect VisitFactory_Roo_JpaEntityFactory {
    
    /**
     * Creates a new {@link Visit} with the given index.
     * 
     * @param index position of the Visit
     * @return a new transient Visit
     */
    public Visit VisitFactory.create(int index) {
        Visit obj = new Visit();
        setDescription(obj, index);
        setVet(obj, index);
        setVisitDate(obj, index);
        return obj;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void VisitFactory.setDescription(Visit obj, int index) {
        String description = "description_" + index;
        if (description.length() > 255) {
            description = description.substring(0, 255);
        }
        obj.setDescription(description);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void VisitFactory.setVet(Visit obj, int index) {
        Vet vet = null;
        obj.setVet(vet);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void VisitFactory.setVisitDate(Visit obj, int index) {
        Date visitDate = new Date(new Date().getTime() - 10000000L);
        obj.setVisitDate(visitDate);
    }
    
}
