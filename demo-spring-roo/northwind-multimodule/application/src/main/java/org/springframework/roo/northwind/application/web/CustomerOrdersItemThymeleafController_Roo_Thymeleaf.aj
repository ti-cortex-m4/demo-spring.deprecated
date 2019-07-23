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
import java.util.Arrays;
import java.util.Locale;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.application.web.CustomerOrdersCollectionThymeleafController;
import org.springframework.roo.northwind.application.web.CustomerOrdersItemThymeleafController;
import org.springframework.roo.northwind.application.web.CustomerOrdersItemThymeleafLinkFactory;
import org.springframework.roo.northwind.model.CustomerOrder;
import org.springframework.roo.northwind.model.Status;
import org.springframework.roo.northwind.service.api.CustomerOrderService;
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

privileged aspect CustomerOrdersItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: CustomerOrdersItemThymeleafController: @Controller;
    
    declare @type: CustomerOrdersItemThymeleafController: @RequestMapping(value = "/customerorders/{customerOrder}", name = "CustomerOrdersItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerOrderService CustomerOrdersItemThymeleafController.customerOrderService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource CustomerOrdersItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<CustomerOrdersItemThymeleafController> CustomerOrdersItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<CustomerOrdersCollectionThymeleafController> CustomerOrdersItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private final ConcurrencyTemplate<CustomerOrder> CustomerOrdersItemThymeleafController.concurrencyTemplate = new ConcurrencyTemplate<CustomerOrder>(this);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param customerOrderService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public CustomerOrdersItemThymeleafController.new(CustomerOrderService customerOrderService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setCustomerOrderService(customerOrderService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(CustomerOrdersItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(CustomerOrdersCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderService
     */
    public CustomerOrderService CustomerOrdersItemThymeleafController.getCustomerOrderService() {
        return customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrderService
     */
    public void CustomerOrdersItemThymeleafController.setCustomerOrderService(CustomerOrderService customerOrderService) {
        this.customerOrderService = customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource CustomerOrdersItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void CustomerOrdersItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<CustomerOrdersItemThymeleafController> CustomerOrdersItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void CustomerOrdersItemThymeleafController.setItemLink(MethodLinkBuilderFactory<CustomerOrdersItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<CustomerOrdersCollectionThymeleafController> CustomerOrdersItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void CustomerOrdersItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<CustomerOrdersCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return CustomerOrder
     */
    @ModelAttribute
    public CustomerOrder CustomerOrdersItemThymeleafController.getCustomerOrder(@PathVariable("customerOrder") Long id, Locale locale, HttpMethod method) {
        CustomerOrder customerOrder = null;
        if (HttpMethod.PUT.equals(method)) {
            customerOrder = customerOrderService.findOneForUpdate(id);
        } else {
            customerOrder = customerOrderService.findOne(id);
        }
        
        if (customerOrder == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"CustomerOrder", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return customerOrder;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView CustomerOrdersItemThymeleafController.show(@ModelAttribute CustomerOrder customerOrder, Model model) {
        model.addAttribute("customerOrder", customerOrder);
        return new ModelAndView("customerorders/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView CustomerOrdersItemThymeleafController.showInline(@ModelAttribute CustomerOrder customerOrder, Model model) {
        model.addAttribute("customerOrder", customerOrder);
        return new ModelAndView("customerorders/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CustomerOrdersItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("orderDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("requiredDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("shippedDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("invoiceDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        model.addAttribute("closeDate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CustomerOrdersItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
        model.addAttribute("status", Arrays.asList(Status.values()));
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConcurrencyTemplate
     */
    public ConcurrencyTemplate<CustomerOrder> CustomerOrdersItemThymeleafController.getConcurrencyTemplate() {
        return concurrencyTemplate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String CustomerOrdersItemThymeleafController.getModelName() {
        return "customerOrder";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String CustomerOrdersItemThymeleafController.getEditViewPath() {
        return "customerorders/edit";
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param record
     * @return Integer
     */
    public Integer CustomerOrdersItemThymeleafController.getLastVersion(CustomerOrder record) {
        Long versionValue = getCustomerOrderService().findOne(record.getId()).getVersion();
        return versionValue != null ? versionValue.intValue() : null;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @param model
     * @return ModelAndView
     */
    public ModelAndView CustomerOrdersItemThymeleafController.populateAndGetFormView(CustomerOrder entity, Model model) {
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
    @InitBinder("customerOrder")
    public void CustomerOrdersItemThymeleafController.initCustomerOrderBinder(WebDataBinder binder) {
        binder.setDisallowedFields("id");
        // Register validators
        GenericValidator validator = new GenericValidator(CustomerOrder.class, getCustomerOrderService());
        binder.addValidators(validator);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView CustomerOrdersItemThymeleafController.editForm(@ModelAttribute CustomerOrder customerOrder, Model model) {
        populateForm(model);
        
        model.addAttribute("customerOrder", customerOrder);
        return new ModelAndView("customerorders/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView CustomerOrdersItemThymeleafController.update(@Valid @ModelAttribute CustomerOrder customerOrder, BindingResult result, @RequestParam("version") Long version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            return new ModelAndView(getEditViewPath());
        }
        // Create Concurrency Spring Template to ensure that the following code will manage the
        // possible concurrency exceptions that appears and execute the provided coded inside the Spring template.
        // If some concurrency exception appears the template will manage it.
        CustomerOrder savedCustomerOrder = getConcurrencyTemplate().execute(customerOrder, model, new ConcurrencyCallback<CustomerOrder>() {
            @Override
            public CustomerOrder doInConcurrency(CustomerOrder customerOrder) throws Exception {
                return getCustomerOrderService().save(customerOrder);
            }
        });
        UriComponents showURI = getItemLink().to(CustomerOrdersItemThymeleafLinkFactory.SHOW).with("customerOrder", savedCustomerOrder.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> CustomerOrdersItemThymeleafController.delete(@ModelAttribute CustomerOrder customerOrder) {
        getCustomerOrderService().delete(customerOrder);
        return ResponseEntity.ok().build();
    }
    
}
