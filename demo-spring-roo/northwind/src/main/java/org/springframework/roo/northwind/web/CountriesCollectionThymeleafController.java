package org.springframework.roo.northwind.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import org.springframework.roo.northwind.domain.Country;

/**
 * = CountriesCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Country.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class CountriesCollectionThymeleafController {
}
