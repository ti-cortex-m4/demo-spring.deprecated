// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.service.api;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.domain.CustomerOrder;
import org.springframework.roo.northwind.domain.OrderDetail;
import org.springframework.roo.northwind.domain.Product;
import org.springframework.roo.northwind.service.api.OrderDetailService;

privileged aspect OrderDetailService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return OrderDetail
     */
    public abstract OrderDetail OrderDetailService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetail
     */
    public abstract void OrderDetailService.delete(OrderDetail orderDetail);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<OrderDetail> OrderDetailService.save(Iterable<OrderDetail> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void OrderDetailService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return OrderDetail
     */
    public abstract OrderDetail OrderDetailService.save(OrderDetail entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return OrderDetail
     */
    public abstract OrderDetail OrderDetailService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<OrderDetail> OrderDetailService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<OrderDetail> OrderDetailService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long OrderDetailService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<OrderDetail> OrderDetailService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<OrderDetail> OrderDetailService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<OrderDetail> OrderDetailService.findByCustomerOrder(CustomerOrder customerOrder, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<OrderDetail> OrderDetailService.findByProduct(Product product, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @return Long
     */
    public abstract long OrderDetailService.countByCustomerOrder(CustomerOrder customerOrder);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @return Long
     */
    public abstract long OrderDetailService.countByProduct(Product product);
    
}
