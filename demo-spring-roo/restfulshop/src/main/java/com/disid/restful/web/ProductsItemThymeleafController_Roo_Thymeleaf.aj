// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.web;

import com.disid.restful.model.Product;
import com.disid.restful.service.api.ProductService;
import com.disid.restful.web.ProductsCollectionThymeleafController;
import com.disid.restful.web.ProductsItemThymeleafController;
import com.disid.restful.web.ProductsItemThymeleafLinkFactory;
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

privileged aspect ProductsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ProductsItemThymeleafController: @Controller;
    
    declare @type: ProductsItemThymeleafController: @RequestMapping(value = "/products/{product}", name = "ProductsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ProductService ProductsItemThymeleafController.productService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ProductsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ProductsItemThymeleafController> ProductsItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ProductsCollectionThymeleafController> ProductsItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<Product> ProductsItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<Product>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param productService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ProductsItemThymeleafController.new(ProductService productService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setProductService(productService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ProductsItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(ProductsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ProductService
     */
    public ProductService ProductsItemThymeleafController.getProductService() {
        return productService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productService
     */
    public void ProductsItemThymeleafController.setProductService(ProductService productService) {
        this.productService = productService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ProductsItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ProductsItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ProductsItemThymeleafController> ProductsItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ProductsItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ProductsItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ProductsCollectionThymeleafController> ProductsItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ProductsItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ProductsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Product
     */
    @ModelAttribute
    public Product ProductsItemThymeleafController.getProduct(@PathVariable("product") Long id, Locale locale, HttpMethod method) {
        Product product = null;
        if (HttpMethod.PUT.equals(method)) {
            product = productService.findOneForUpdate(id);
        } else {
            product = productService.findOne(id);
        }
        
        if (product == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Product", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return product;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ProductsItemThymeleafController.show(@ModelAttribute Product product, Model model) {
        model.addAttribute("product", product);
        return new ModelAndView("products/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ProductsItemThymeleafController.showInline(@ModelAttribute Product product, Model model) {
        model.addAttribute("product", product);
        return new ModelAndView("products/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ProductsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ProductsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<Product> ProductsItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ProductsItemThymeleafController.getModelName() {
        return "product";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ProductsItemThymeleafController.getEditViewPath() {
        return "products/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer ProductsItemThymeleafController.getLastVersion(Product record) {
        return getProductService().findOne(record.getId()).getVersion();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView ProductsItemThymeleafController.populateAndGetFormView(Product entity, Model model) {
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
    @InitBinder("product")
    public void ProductsItemThymeleafController.initProductBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(Product.class, getProductService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ProductsItemThymeleafController.editForm(@ModelAttribute Product product, Model model) {
        populateForm(model);
        
        model.addAttribute("product", product);
        return new ModelAndView("products/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ProductsItemThymeleafController.update(@Valid @ModelAttribute Product product, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        Product savedProduct = getConcurrencyTemplate().execute(product, model, new ConcurrencyCallback<Product>() {
            @Override
            public Product doInConcurrency(Product product) throws Exception {
                return getProductService().save(product);
            }
        });
        UriComponents showURI = getItemLink().to(ProductsItemThymeleafLinkFactory.SHOW).with("product", savedProduct.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ProductsItemThymeleafController.delete(@ModelAttribute Product product) {
        getProductService().delete(product);
        return ResponseEntity.ok().build();
    }
    
}
