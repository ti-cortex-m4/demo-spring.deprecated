// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.repository;

import org.springframework.roo.petclinic.repository.OwnerRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect OwnerRepository_Roo_Jpa_Repository {
    
    declare @type: OwnerRepository: @Transactional(readOnly = true);
    
}