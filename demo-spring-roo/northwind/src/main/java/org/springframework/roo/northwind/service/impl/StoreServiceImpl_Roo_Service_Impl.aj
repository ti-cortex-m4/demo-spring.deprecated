// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.service.impl;

import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.domain.City;
import org.springframework.roo.northwind.domain.Country;
import org.springframework.roo.northwind.domain.Region;
import org.springframework.roo.northwind.domain.Store;
import org.springframework.roo.northwind.repository.StoreRepository;
import org.springframework.roo.northwind.service.impl.StoreServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect StoreServiceImpl_Roo_Service_Impl {
    
    declare @type: StoreServiceImpl: @Service;
    
    declare @type: StoreServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private StoreRepository StoreServiceImpl.storeRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param storeRepository
     */
    @Autowired
    public StoreServiceImpl.new(StoreRepository storeRepository) {
        setStoreRepository(storeRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return StoreRepository
     */
    public StoreRepository StoreServiceImpl.getStoreRepository() {
        return storeRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storeRepository
     */
    public void StoreServiceImpl.setStoreRepository(StoreRepository storeRepository) {
        this.storeRepository = storeRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param store
     * @return Map
     */
    public Map<String, List<MessageI18n>> StoreServiceImpl.validate(Store store) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param store
     */
    @Transactional
    public void StoreServiceImpl.delete(Store store) {
        // Clear bidirectional many-to-one child relationship with Country
        if (store.getCountry() != null) {
            store.getCountry().getStores().remove(store);
        }
        
        // Clear bidirectional many-to-one child relationship with City
        if (store.getCity() != null) {
            store.getCity().getStores().remove(store);
        }
        
        // Clear bidirectional many-to-one child relationship with Region
        if (store.getRegion() != null) {
            store.getRegion().getStores().remove(store);
        }
        
        getStoreRepository().delete(store);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Store> StoreServiceImpl.save(Iterable<Store> entities) {
        return getStoreRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void StoreServiceImpl.delete(Iterable<Long> ids) {
        List<Store> toDelete = getStoreRepository().findAll(ids);
        getStoreRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Store
     */
    @Transactional
    public Store StoreServiceImpl.save(Store entity) {
        return getStoreRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Store
     */
    public Store StoreServiceImpl.findOne(Long id) {
        return getStoreRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Store
     */
    public Store StoreServiceImpl.findOneForUpdate(Long id) {
        return getStoreRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Store> StoreServiceImpl.findAll(Iterable<Long> ids) {
        return getStoreRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Store> StoreServiceImpl.findAll() {
        return getStoreRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long StoreServiceImpl.count() {
        return getStoreRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Store> StoreServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getStoreRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Store> StoreServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getStoreRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Store> StoreServiceImpl.findByCity(City city, GlobalSearch globalSearch, Pageable pageable) {
        return getStoreRepository().findByCity(city, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Store> StoreServiceImpl.findByCountry(Country country, GlobalSearch globalSearch, Pageable pageable) {
        return getStoreRepository().findByCountry(country, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Store> StoreServiceImpl.findByRegion(Region region, GlobalSearch globalSearch, Pageable pageable) {
        return getStoreRepository().findByRegion(region, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @return Long
     */
    public long StoreServiceImpl.countByCity(City city) {
        return getStoreRepository().countByCity(city);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @return Long
     */
    public long StoreServiceImpl.countByCountry(Country country) {
        return getStoreRepository().countByCountry(country);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @return Long
     */
    public long StoreServiceImpl.countByRegion(Region region) {
        return getStoreRepository().countByRegion(region);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Store> StoreServiceImpl.getEntityType() {
        return Store.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> StoreServiceImpl.getIdType() {
        return Long.class;
    }
    
}
