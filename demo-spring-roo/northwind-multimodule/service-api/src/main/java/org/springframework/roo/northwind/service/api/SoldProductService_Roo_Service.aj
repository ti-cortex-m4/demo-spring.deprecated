// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.service.api;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.SoldProduct;
import org.springframework.roo.northwind.service.api.SoldProductService;

privileged aspect SoldProductService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return SoldProduct
     */
    public abstract SoldProduct SoldProductService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProduct
     */
    public abstract void SoldProductService.delete(SoldProduct soldProduct);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<SoldProduct> SoldProductService.save(Iterable<SoldProduct> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void SoldProductService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return SoldProduct
     */
    public abstract SoldProduct SoldProductService.save(SoldProduct entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return SoldProduct
     */
    public abstract SoldProduct SoldProductService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<SoldProduct> SoldProductService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<SoldProduct> SoldProductService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long SoldProductService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<SoldProduct> SoldProductService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<SoldProduct> SoldProductService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
}
