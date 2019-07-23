// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.City;
import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.model.Supplier;
import org.springframework.roo.northwind.repository.SupplierRepositoryCustom;

privileged aspect SupplierRepositoryCustom_Roo_Jpa_Repository_Custom {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Supplier> SupplierRepositoryCustom.findByCountry(Country country, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Supplier> SupplierRepositoryCustom.findByCity(City city, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Supplier> SupplierRepositoryCustom.findByRegion(Region region, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Supplier> SupplierRepositoryCustom.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Supplier> SupplierRepositoryCustom.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
}
