// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.service.api;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.domain.Country;
import org.springframework.roo.northwind.domain.Region;
import org.springframework.roo.northwind.service.api.RegionService;

privileged aspect RegionService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Region
     */
    public abstract Region RegionService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     */
    public abstract void RegionService.delete(Region region);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Region> RegionService.save(Iterable<Region> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void RegionService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Region
     */
    public abstract Region RegionService.save(Region entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Region
     */
    public abstract Region RegionService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Region> RegionService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Region> RegionService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long RegionService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Region> RegionService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Region> RegionService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param citiesToAdd
     * @return Region
     */
    public abstract Region RegionService.addToCities(Region region, Iterable<Long> citiesToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param citiesToRemove
     * @return Region
     */
    public abstract Region RegionService.removeFromCities(Region region, Iterable<Long> citiesToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param cities
     * @return Region
     */
    public abstract Region RegionService.setCities(Region region, Iterable<Long> cities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param customerOrdersToAdd
     * @return Region
     */
    public abstract Region RegionService.addToCustomerOrders(Region region, Iterable<Long> customerOrdersToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param customerOrdersToRemove
     * @return Region
     */
    public abstract Region RegionService.removeFromCustomerOrders(Region region, Iterable<Long> customerOrdersToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param customerOrders
     * @return Region
     */
    public abstract Region RegionService.setCustomerOrders(Region region, Iterable<Long> customerOrders);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param partiesToAdd
     * @return Region
     */
    public abstract Region RegionService.addToParties(Region region, Iterable<Long> partiesToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param partiesToRemove
     * @return Region
     */
    public abstract Region RegionService.removeFromParties(Region region, Iterable<Long> partiesToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param parties
     * @return Region
     */
    public abstract Region RegionService.setParties(Region region, Iterable<Long> parties);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param storesToAdd
     * @return Region
     */
    public abstract Region RegionService.addToStores(Region region, Iterable<Long> storesToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param storesToRemove
     * @return Region
     */
    public abstract Region RegionService.removeFromStores(Region region, Iterable<Long> storesToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param stores
     * @return Region
     */
    public abstract Region RegionService.setStores(Region region, Iterable<Long> stores);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param suppliersToAdd
     * @return Region
     */
    public abstract Region RegionService.addToSuppliers(Region region, Iterable<Long> suppliersToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param suppliersToRemove
     * @return Region
     */
    public abstract Region RegionService.removeFromSuppliers(Region region, Iterable<Long> suppliersToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param suppliers
     * @return Region
     */
    public abstract Region RegionService.setSuppliers(Region region, Iterable<Long> suppliers);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Region> RegionService.findByCountry(Country country, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @return Long
     */
    public abstract long RegionService.countByCountry(Country country);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param pageable
     * @return Page
     */
    public abstract Page<Region> RegionService.findByCountryIdOrderByDescriptionAsc(Long id, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Long
     */
    public abstract long RegionService.countByCountryIdOrderByDescriptionAsc(Long id);
    
}
