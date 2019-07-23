// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.service.api;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.Shipper;
import org.springframework.roo.northwind.model.ShipperPhoneFormBean;
import org.springframework.roo.northwind.service.api.ShipperService;

privileged aspect ShipperService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Shipper
     */
    public abstract Shipper ShipperService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     */
    public abstract void ShipperService.delete(Shipper shipper);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Shipper> ShipperService.save(Iterable<Shipper> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void ShipperService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Shipper
     */
    public abstract Shipper ShipperService.save(Shipper entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Shipper
     */
    public abstract Shipper ShipperService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Shipper> ShipperService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Shipper> ShipperService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long ShipperService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Shipper> ShipperService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Shipper> ShipperService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @param customerOrdersToAdd
     * @return Shipper
     */
    public abstract Shipper ShipperService.addToCustomerOrders(Shipper shipper, Iterable<Long> customerOrdersToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @param customerOrdersToRemove
     * @return Shipper
     */
    public abstract Shipper ShipperService.removeFromCustomerOrders(Shipper shipper, Iterable<Long> customerOrdersToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @param customerOrders
     * @return Shipper
     */
    public abstract Shipper ShipperService.setCustomerOrders(Shipper shipper, Iterable<Long> customerOrders);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param companyName
     * @param pageable
     * @return Page
     */
    public abstract Page<Shipper> ShipperService.findByCompanyName(String companyName, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Shipper> ShipperService.findByPhone(ShipperPhoneFormBean formBean, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param companyName
     * @return Long
     */
    public abstract long ShipperService.countByCompanyName(String companyName);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @return Long
     */
    public abstract long ShipperService.countByPhone(ShipperPhoneFormBean formBean);
    
}
