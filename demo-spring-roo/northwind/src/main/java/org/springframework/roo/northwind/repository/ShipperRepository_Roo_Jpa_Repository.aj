// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.domain.Shipper;
import org.springframework.roo.northwind.repository.ShipperRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ShipperRepository_Roo_Jpa_Repository {
    
    declare @type: ShipperRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param companyName
     * @param pageable
     * @return Page
     */
    public abstract Page<Shipper> ShipperRepository.findByCompanyName(String companyName, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param companyName
     * @return Long
     */
    public abstract long ShipperRepository.countByCompanyName(String companyName);
    
}
