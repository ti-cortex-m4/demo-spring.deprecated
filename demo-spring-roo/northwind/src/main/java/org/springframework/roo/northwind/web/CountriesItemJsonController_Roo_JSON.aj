// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.web;

import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.domain.Country;
import org.springframework.roo.northwind.service.api.CountryService;
import org.springframework.roo.northwind.web.CountriesItemJsonController;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect CountriesItemJsonController_Roo_JSON {
    
    declare @type: CountriesItemJsonController: @RestController;
    
    declare @type: CountriesItemJsonController: @RequestMapping(value = "/api/countries/{country}", name = "CountriesItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CountryService CountriesItemJsonController.countryService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param countryService
     */
    @Autowired
    public CountriesItemJsonController.new(CountryService countryService) {
        this.countryService = countryService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CountryService
     */
    public CountryService CountriesItemJsonController.getCountryService() {
        return countryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param countryService
     */
    public void CountriesItemJsonController.setCountryService(CountryService countryService) {
        this.countryService = countryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Country
     */
    @ModelAttribute
    public Country CountriesItemJsonController.getCountry(@PathVariable("country") Long id) {
        Country country = countryService.findOne(id);
        if (country == null) {
            throw new NotFoundException(String.format("Country with identifier '%s' not found",id));
        }
        return country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> CountriesItemJsonController.show(@ModelAttribute Country country) {
        return ResponseEntity.ok(country);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @return UriComponents
     */
    public static UriComponents CountriesItemJsonController.showURI(Country country) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(CountriesItemJsonController.class).show(country))
            .buildAndExpand(country.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedCountry
     * @param country
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> CountriesItemJsonController.update(@ModelAttribute Country storedCountry, @Valid @RequestBody Country country, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        country.setId(storedCountry.getId());
        getCountryService().save(country);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> CountriesItemJsonController.delete(@ModelAttribute Country country) {
        getCountryService().delete(country);
        return ResponseEntity.ok().build();
    }
    
}
