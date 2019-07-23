package com.disid.restful.web;
import com.disid.restful.model.Product;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ProductsCollectionJsonController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Product.class, type = ControllerType.COLLECTION)
@RooJSON
public class ProductsCollectionJsonController {
}
