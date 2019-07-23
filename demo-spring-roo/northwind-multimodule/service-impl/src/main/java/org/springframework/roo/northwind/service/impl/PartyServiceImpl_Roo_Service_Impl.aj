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
import org.springframework.roo.northwind.model.City;
import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.model.Party;
import org.springframework.roo.northwind.model.Region;
import org.springframework.roo.northwind.repository.PartyRepository;
import org.springframework.roo.northwind.service.impl.PartyServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PartyServiceImpl_Roo_Service_Impl {
    
    declare @type: PartyServiceImpl: @Service;
    
    declare @type: PartyServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PartyRepository PartyServiceImpl.partyRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param partyRepository
     */
    @Autowired
    public PartyServiceImpl.new(PartyRepository partyRepository) {
        setPartyRepository(partyRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return PartyRepository
     */
    public PartyRepository PartyServiceImpl.getPartyRepository() {
        return partyRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param partyRepository
     */
    public void PartyServiceImpl.setPartyRepository(PartyRepository partyRepository) {
        this.partyRepository = partyRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param party
     * @return Map
     */
    public Map<String, List<MessageI18n>> PartyServiceImpl.validate(Party party) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param party
     */
    @Transactional
    public void PartyServiceImpl.delete(Party party) {
        // Clear bidirectional many-to-one child relationship with Country
        if (party.getCountry() != null) {
            party.getCountry().getParties().remove(party);
        }
        
        // Clear bidirectional many-to-one child relationship with City
        if (party.getCity() != null) {
            party.getCity().getParties().remove(party);
        }
        
        // Clear bidirectional many-to-one child relationship with Region
        if (party.getRegion() != null) {
            party.getRegion().getParties().remove(party);
        }
        
        getPartyRepository().delete(party);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Party> PartyServiceImpl.save(Iterable<Party> entities) {
        return getPartyRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void PartyServiceImpl.delete(Iterable<Long> ids) {
        List<Party> toDelete = getPartyRepository().findAll(ids);
        getPartyRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Party
     */
    @Transactional
    public Party PartyServiceImpl.save(Party entity) {
        return getPartyRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Party
     */
    public Party PartyServiceImpl.findOne(Long id) {
        return getPartyRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Party
     */
    public Party PartyServiceImpl.findOneForUpdate(Long id) {
        return getPartyRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Party> PartyServiceImpl.findAll(Iterable<Long> ids) {
        return getPartyRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Party> PartyServiceImpl.findAll() {
        return getPartyRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long PartyServiceImpl.count() {
        return getPartyRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Party> PartyServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getPartyRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Party> PartyServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getPartyRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Party> PartyServiceImpl.findByCity(City city, GlobalSearch globalSearch, Pageable pageable) {
        return getPartyRepository().findByCity(city, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Party> PartyServiceImpl.findByCountry(Country country, GlobalSearch globalSearch, Pageable pageable) {
        return getPartyRepository().findByCountry(country, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Party> PartyServiceImpl.findByRegion(Region region, GlobalSearch globalSearch, Pageable pageable) {
        return getPartyRepository().findByRegion(region, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @return Long
     */
    public long PartyServiceImpl.countByCity(City city) {
        return getPartyRepository().countByCity(city);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @return Long
     */
    public long PartyServiceImpl.countByCountry(Country country) {
        return getPartyRepository().countByCountry(country);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @return Long
     */
    public long PartyServiceImpl.countByRegion(Region region) {
        return getPartyRepository().countByRegion(region);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Party> PartyServiceImpl.getEntityType() {
        return Party.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> PartyServiceImpl.getIdType() {
        return Long.class;
    }
    
}
