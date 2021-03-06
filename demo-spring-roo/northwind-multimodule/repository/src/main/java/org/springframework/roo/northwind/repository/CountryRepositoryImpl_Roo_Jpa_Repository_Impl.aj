// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.model.Country;
import org.springframework.roo.northwind.model.QCountry;
import org.springframework.roo.northwind.repository.CountryRepositoryImpl;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CountryRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: CountryRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CountryRepositoryImpl.DESCRIPTION = "description";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Country> CountryRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QCountry country = QCountry.country;
        
        JPQLQuery<Country> query = from(country);
        
        Path<?>[] paths = new Path<?>[] {country.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRIPTION, country.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, country);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Country> CountryRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QCountry country = QCountry.country;
        
        JPQLQuery<Country> query = from(country);
        
        Path<?>[] paths = new Path<?>[] {country.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(country.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRIPTION, country.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, country);
    }
    
}
