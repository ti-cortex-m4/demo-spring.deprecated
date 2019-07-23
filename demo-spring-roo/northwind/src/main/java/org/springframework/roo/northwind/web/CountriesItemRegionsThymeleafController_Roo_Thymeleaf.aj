// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.web;

import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.ConvertedDatatablesData;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesColumns;
import io.springlets.data.web.datatables.DatatablesPageable;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.domain.Country;
import org.springframework.roo.northwind.domain.Region;
import org.springframework.roo.northwind.service.api.CountryService;
import org.springframework.roo.northwind.service.api.RegionService;
import org.springframework.roo.northwind.web.CountriesCollectionThymeleafController;
import org.springframework.roo.northwind.web.CountriesCollectionThymeleafLinkFactory;
import org.springframework.roo.northwind.web.CountriesItemRegionsThymeleafController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

privileged aspect CountriesItemRegionsThymeleafController_Roo_Thymeleaf {
    
    declare @type: CountriesItemRegionsThymeleafController: @Controller;
    
    declare @type: CountriesItemRegionsThymeleafController: @RequestMapping(value = "/countries/{country}/regions", name = "CountriesItemRegionsThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CountryService CountriesItemRegionsThymeleafController.countryService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RegionService CountriesItemRegionsThymeleafController.regionService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource CountriesItemRegionsThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<CountriesCollectionThymeleafController> CountriesItemRegionsThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService CountriesItemRegionsThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param countryService
     * @param regionService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public CountriesItemRegionsThymeleafController.new(CountryService countryService, RegionService regionService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setCountryService(countryService);
        setRegionService(regionService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setCollectionLink(linkBuilder.of(CountriesCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CountryService
     */
    public CountryService CountriesItemRegionsThymeleafController.getCountryService() {
        return countryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param countryService
     */
    public void CountriesItemRegionsThymeleafController.setCountryService(CountryService countryService) {
        this.countryService = countryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return RegionService
     */
    public RegionService CountriesItemRegionsThymeleafController.getRegionService() {
        return regionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regionService
     */
    public void CountriesItemRegionsThymeleafController.setRegionService(RegionService regionService) {
        this.regionService = regionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource CountriesItemRegionsThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void CountriesItemRegionsThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<CountriesCollectionThymeleafController> CountriesItemRegionsThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void CountriesItemRegionsThymeleafController.setCollectionLink(MethodLinkBuilderFactory<CountriesCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService CountriesItemRegionsThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void CountriesItemRegionsThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Country
     */
    @ModelAttribute
    public Country CountriesItemRegionsThymeleafController.getCountry(@PathVariable("country") Long id, Locale locale, HttpMethod method) {
        Country country = null;
        if (HttpMethod.PUT.equals(method)) {
            country = countryService.findOneForUpdate(id);
        } else {
            country = countryService.findOne(id);
        }
        
        if (country == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Country", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CountriesItemRegionsThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CountriesItemRegionsThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatables", produces = Datatables.MEDIA_TYPE, value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Region>> CountriesItemRegionsThymeleafController.datatables(@ModelAttribute Country country, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Region> regions = getRegionService().findByCountry(country, search, pageable);
        long totalRegionsCount = getRegionService().countByCountry(country);
        ConvertedDatatablesData<Region> data =  new ConvertedDatatablesData<Region>(regions, totalRegionsCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatablesByIdsIn", produces = Datatables.MEDIA_TYPE, value = "/dtByIdsIn")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Region>> CountriesItemRegionsThymeleafController.datatablesByIdsIn(@RequestParam("ids") List<Long> ids, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Region> regions = getRegionService().findAllByIdsIn(ids, search, pageable);
        long totalRegionsCount = regions.getTotalElements();
        ConvertedDatatablesData<Region> data =  new ConvertedDatatablesData<Region>(regions, totalRegionsCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView CountriesItemRegionsThymeleafController.createForm(@ModelAttribute Country country, Model model) {
        populateForm(model);
        model.addAttribute("region", new Region());
        return new ModelAndView("countries/regions/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param regionsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromRegions", value = "/{regionsToRemove}")
    @ResponseBody
    public ResponseEntity<?> CountriesItemRegionsThymeleafController.removeFromRegions(@ModelAttribute Country country, @PathVariable("regionsToRemove") Long regionsToRemove) {
        getCountryService().removeFromRegions(country,Collections.singleton(regionsToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param regionsToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromRegionsBatch", value = "/batch/{regionsToRemove}")
    @ResponseBody
    public ResponseEntity<?> CountriesItemRegionsThymeleafController.removeFromRegionsBatch(@ModelAttribute Country country, @PathVariable("regionsToRemove") Collection<Long> regionsToRemove) {
        getCountryService().removeFromRegions(country, regionsToRemove);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param regions
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView CountriesItemRegionsThymeleafController.create(@ModelAttribute Country country, @RequestParam(value = "regionsIds", required = false) List<Long> regions, @RequestParam("parentVersion") Long version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Remove empty values
        if (regions != null) {
            for (Iterator<Long> iterator = regions.iterator(); iterator.hasNext();) {
                if (iterator.next() == null) {
                    iterator.remove();
                }
            }
        }
        // Concurrency control
        if(!Objects.equals(version, country.getVersion()) && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            // Obtain the selected books and include them in the author that will be 
            // included in the view
            if (regions != null) {
                country.setRegions(new HashSet<Region>(getRegionService().findAll(regions)));
            }else{
                country.setRegions(new HashSet<Region>());
            }
            // Reset the version to prevent update
             country.setVersion(version);
            // Include the updated element in the model
            model.addAttribute("country", country);
            model.addAttribute("concurrency", true);
            return new ModelAndView("countries/regions/create");
        }else if(!Objects.equals(version, country.getVersion()) && "discard".equals(concurrencyControl)){
            populateForm(model);
            // Provide the original element from the Database
            model.addAttribute("country", country);
            model.addAttribute("concurrency", false);
            return new ModelAndView("countries/regions/create");
        }
        getCountryService().setRegions(country,regions);
        return new ModelAndView("redirect:" + getCollectionLink().to(CountriesCollectionThymeleafLinkFactory.LIST).toUriString());
    }
    
}
