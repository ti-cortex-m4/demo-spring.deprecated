package com.springsource.petclinic.application.web;
import com.springsource.petclinic.model.Visit;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = VisitsCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Visit.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class VisitsCollectionThymeleafController {
}
