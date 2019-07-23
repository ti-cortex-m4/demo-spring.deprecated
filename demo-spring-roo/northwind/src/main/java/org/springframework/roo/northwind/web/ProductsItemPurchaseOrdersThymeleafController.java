package org.springframework.roo.northwind.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import org.springframework.roo.northwind.domain.Product;

/**
 * = ProductsItemPurchaseOrdersThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Product.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "purchaseOrders")
@RooThymeleaf
public class ProductsItemPurchaseOrdersThymeleafController {
}
