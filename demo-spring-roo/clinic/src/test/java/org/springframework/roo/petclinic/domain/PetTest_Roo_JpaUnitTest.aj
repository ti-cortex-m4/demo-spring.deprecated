// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.domain;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Arrays;
import java.util.Collections;
import org.junit.Test;
import org.springframework.roo.petclinic.domain.Pet;
import org.springframework.roo.petclinic.domain.PetTest;
import org.springframework.roo.petclinic.domain.Visit;
import org.springframework.roo.petclinic.domain.dod.PetFactory;
import org.springframework.roo.petclinic.domain.dod.VisitFactory;

privileged aspect PetTest_Roo_JpaUnitTest {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PetFactory PetTest.petFactory = new PetFactory();
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private VisitFactory PetTest.visitFactory = new VisitFactory();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PetFactory
     */
    public PetFactory PetTest.getPetFactory() {
        return petFactory;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param petFactory
     */
    public void PetTest.setPetFactory(PetFactory petFactory) {
        this.petFactory = petFactory;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return VisitFactory
     */
    public VisitFactory PetTest.getVisitFactory() {
        return visitFactory;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param visitFactory
     */
    public void PetTest.setVisitFactory(VisitFactory visitFactory) {
        this.visitFactory = visitFactory;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @throws Exception
     */
    @Test
    public void PetTest.addToVisitsShouldAddTheVisitToThevisitsRelationship() throws Exception {
        // Setup
        Pet pet = getPetFactory().create(0);
        Visit visit1 = getVisitFactory().create(0);
        Visit visit2 = getVisitFactory().create(1);
        
        // Exercise
        pet.addToVisits(Arrays.asList(visit1, visit2));
        
        // Verify
        assertThat(pet.getVisits()).as("Check 'addToVisits' adds the visits to the relationship")
            .contains(visit1).contains(visit2);
        assertThat(pet).as("Check 'addToVisits' updates the Visit relationship side")
            .isEqualTo(visit1.getPet()).isEqualTo(visit2.getPet());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @throws Exception
     */
    @Test
    public void PetTest.addToVisitsShouldRemoveTheVisitFromThevisitsRelationship() throws Exception {
        // Setup
        Pet pet = getPetFactory().create(0);
        Visit visit1 = getVisitFactory().create(0);
        Visit visit2 = getVisitFactory().create(1);
        pet.addToVisits(Arrays.asList(visit1, visit2));
        
        // Exercise
        pet.removeFromVisits(Collections.singleton(visit1));
        
        // Verify
        assertThat(visit1.getPet()).as("Check 'removeFromVisits' updates the Visit relationship side")
            .isNull();
        assertThat(pet.getVisits()).as("Check 'removeFromVisits' removes a Visit from the relationship")
            .doesNotContain(visit1).contains(visit2);
    }
    
}
