// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.repository;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.northwind.domain.City;
import org.springframework.roo.northwind.domain.Country;
import org.springframework.roo.northwind.domain.Customer;
import org.springframework.roo.northwind.domain.CustomerOrder;
import org.springframework.roo.northwind.domain.Employee;
import org.springframework.roo.northwind.domain.Region;
import org.springframework.roo.northwind.domain.Shipper;
import org.springframework.roo.northwind.repository.CustomerOrderRepositoryCustom;

privileged aspect CustomerOrderRepositoryCustom_Roo_Jpa_Repository_Custom {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<CustomerOrder> CustomerOrderRepositoryCustom.findByCountry(Country country, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<CustomerOrder> CustomerOrderRepositoryCustom.findByShipper(Shipper shipper, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<CustomerOrder> CustomerOrderRepositoryCustom.findByCity(City city, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employee
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<CustomerOrder> CustomerOrderRepositoryCustom.findByEmployee(Employee employee, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<CustomerOrder> CustomerOrderRepositoryCustom.findByRegion(Region region, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<CustomerOrder> CustomerOrderRepositoryCustom.findByCustomer(Customer customer, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<CustomerOrder> CustomerOrderRepositoryCustom.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<CustomerOrder> CustomerOrderRepositoryCustom.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
}
