// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.data.web.validation.GenericValidator;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import io.springlets.web.mvc.util.concurrency.ConcurrencyCallback;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import io.springlets.web.mvc.util.concurrency.ConcurrencyTemplate;
import java.util.Locale;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.application.web.SoldProductsCollectionThymeleafController;
import org.springframework.roo.northwind.application.web.SoldProductsItemThymeleafController;
import org.springframework.roo.northwind.application.web.SoldProductsItemThymeleafLinkFactory;
import org.springframework.roo.northwind.model.SoldProduct;
import org.springframework.roo.northwind.service.api.SoldProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect SoldProductsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: SoldProductsItemThymeleafController: @Controller;
    
    declare @type: SoldProductsItemThymeleafController: @RequestMapping(value = "/soldproducts/{soldProduct}", name = "SoldProductsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private SoldProductService SoldProductsItemThymeleafController.soldProductService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource SoldProductsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<SoldProductsItemThymeleafController> SoldProductsItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<SoldProductsCollectionThymeleafController> SoldProductsItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<SoldProduct> SoldProductsItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<SoldProduct>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param soldProductService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public SoldProductsItemThymeleafController.new(SoldProductService soldProductService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setSoldProductService(soldProductService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(SoldProductsItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(SoldProductsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return SoldProductService
     */
    public SoldProductService SoldProductsItemThymeleafController.getSoldProductService() {
        return soldProductService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProductService
     */
    public void SoldProductsItemThymeleafController.setSoldProductService(SoldProductService soldProductService) {
        this.soldProductService = soldProductService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource SoldProductsItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void SoldProductsItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<SoldProductsItemThymeleafController> SoldProductsItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void SoldProductsItemThymeleafController.setItemLink(MethodLinkBuilderFactory<SoldProductsItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<SoldProductsCollectionThymeleafController> SoldProductsItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void SoldProductsItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<SoldProductsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return SoldProduct
     */
    @ModelAttribute
    public SoldProduct SoldProductsItemThymeleafController.getSoldProduct(@PathVariable("soldProduct") Long id, Locale locale, HttpMethod method) {
        SoldProduct soldProduct = null;
        if (HttpMethod.PUT.equals(method)) {
            soldProduct = soldProductService.findOneForUpdate(id);
        } else {
            soldProduct = soldProductService.findOne(id);
        }
        
        if (soldProduct == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"SoldProduct", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return soldProduct;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProduct
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView SoldProductsItemThymeleafController.show(@ModelAttribute SoldProduct soldProduct, Model model) {
        model.addAttribute("soldProduct", soldProduct);
        return new ModelAndView("soldproducts/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProduct
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView SoldProductsItemThymeleafController.showInline(@ModelAttribute SoldProduct soldProduct, Model model) {
        model.addAttribute("soldProduct", soldProduct);
        return new ModelAndView("soldproducts/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void SoldProductsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void SoldProductsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<SoldProduct> SoldProductsItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String SoldProductsItemThymeleafController.getModelName() {
        return "soldProduct";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String SoldProductsItemThymeleafController.getEditViewPath() {
        return "soldproducts/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer SoldProductsItemThymeleafController.getLastVersion(SoldProduct record) {
        Long versionValue = getSoldProductService().findOne(record.getId()).getVersion();
        return versionValue != null ? versionValue.intValue() : null;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView SoldProductsItemThymeleafController.populateAndGetFormView(SoldProduct entity, Model model) {
        // Populate the form with all the necessary elements
        populateForm(model);
        // Add concurrency attribute to the model to show the concurrency form
        // in the current edit view
        model.addAttribute("concurrency", true);
        // Add the new version value to the model.
        model.addAttribute("newVersion", getLastVersion(entity));
        // Add the current pet values to maintain the values introduced by the user
        model.addAttribute(getModelName(), entity);
        // Return the edit view path
        return new org.springframework.web.servlet.ModelAndView(getEditViewPath(), model.asMap());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param binder
     */
    @InitBinder("soldProduct")
    public void SoldProductsItemThymeleafController.initSoldProductBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(SoldProduct.class, getSoldProductService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProduct
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView SoldProductsItemThymeleafController.editForm(@ModelAttribute SoldProduct soldProduct, Model model) {
        populateForm(model);
        
        model.addAttribute("soldProduct", soldProduct);
        return new ModelAndView("soldproducts/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProduct
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView SoldProductsItemThymeleafController.update(@Valid @ModelAttribute SoldProduct soldProduct, BindingResult result, @RequestParam("version") Long version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        SoldProduct savedSoldProduct = getConcurrencyTemplate().execute(soldProduct, model, new ConcurrencyCallback<SoldProduct>() {
            @Override
            public SoldProduct doInConcurrency(SoldProduct soldProduct) throws Exception {
                return getSoldProductService().save(soldProduct);
            }
        });
        UriComponents showURI = getItemLink().to(SoldProductsItemThymeleafLinkFactory.SHOW).with("soldProduct", savedSoldProduct.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProduct
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> SoldProductsItemThymeleafController.delete(@ModelAttribute SoldProduct soldProduct) {
        getSoldProductService().delete(soldProduct);
        return ResponseEntity.ok().build();
    }
    
}
