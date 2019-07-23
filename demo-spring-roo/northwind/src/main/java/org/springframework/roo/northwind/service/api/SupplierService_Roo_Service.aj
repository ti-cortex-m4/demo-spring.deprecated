// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.service.api;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.domain.City;
import org.springframework.roo.northwind.domain.Country;
import org.springframework.roo.northwind.domain.Region;
import org.springframework.roo.northwind.domain.Supplier;
import org.springframework.roo.northwind.service.api.SupplierService;

privileged aspect SupplierService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Supplier
     */
    public abstract Supplier SupplierService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplier
     */
    public abstract void SupplierService.delete(Supplier supplier);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Supplier> SupplierService.save(Iterable<Supplier> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void SupplierService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Supplier
     */
    public abstract Supplier SupplierService.save(Supplier entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Supplier
     */
    public abstract Supplier SupplierService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Supplier> SupplierService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Supplier> SupplierService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long SupplierService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Supplier> SupplierService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Supplier> SupplierService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplier
     * @param productsToAdd
     * @return Supplier
     */
    public abstract Supplier SupplierService.addToProducts(Supplier supplier, Iterable<Long> productsToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplier
     * @param productsToRemove
     * @return Supplier
     */
    public abstract Supplier SupplierService.removeFromProducts(Supplier supplier, Iterable<Long> productsToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplier
     * @param products
     * @return Supplier
     */
    public abstract Supplier SupplierService.setProducts(Supplier supplier, Iterable<Long> products);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Supplier> SupplierService.findByCity(City city, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Supplier> SupplierService.findByCountry(Country country, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Supplier> SupplierService.findByRegion(Region region, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @return Long
     */
    public abstract long SupplierService.countByCity(City city);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @return Long
     */
    public abstract long SupplierService.countByCountry(Country country);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @return Long
     */
    public abstract long SupplierService.countByRegion(Region region);
    
}
