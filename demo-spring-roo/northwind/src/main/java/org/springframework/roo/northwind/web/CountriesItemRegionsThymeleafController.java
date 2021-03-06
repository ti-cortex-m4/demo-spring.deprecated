package org.springframework.roo.northwind.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import org.springframework.roo.northwind.domain.Country;

/**
 * = CountriesItemRegionsThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Country.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "regions")
@RooThymeleaf
public class CountriesItemRegionsThymeleafController {
}
