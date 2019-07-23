// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.application.web.EmployeesItemJsonController;
import org.springframework.roo.northwind.model.Employee;
import org.springframework.roo.northwind.service.api.EmployeeService;
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

privileged aspect EmployeesItemJsonController_Roo_JSON {
    
    declare @type: EmployeesItemJsonController: @RestController;
    
    declare @type: EmployeesItemJsonController: @RequestMapping(value = "/api/employees/{employee}", name = "EmployeesItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private EmployeeService EmployeesItemJsonController.employeeService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param employeeService
     */
    @Autowired
    public EmployeesItemJsonController.new(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return EmployeeService
     */
    public EmployeeService EmployeesItemJsonController.getEmployeeService() {
        return employeeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employeeService
     */
    public void EmployeesItemJsonController.setEmployeeService(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Employee
     */
    @ModelAttribute
    public Employee EmployeesItemJsonController.getEmployee(@PathVariable("employee") Long id) {
        Employee employee = employeeService.findOne(id);
        if (employee == null) {
            throw new NotFoundException(String.format("Employee with identifier '%s' not found",id));
        }
        return employee;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employee
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> EmployeesItemJsonController.show(@ModelAttribute Employee employee) {
        return ResponseEntity.ok(employee);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employee
     * @return UriComponents
     */
    public static UriComponents EmployeesItemJsonController.showURI(Employee employee) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(EmployeesItemJsonController.class).show(employee))
            .buildAndExpand(employee.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedEmployee
     * @param employee
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> EmployeesItemJsonController.update(@ModelAttribute Employee storedEmployee, @Valid @RequestBody Employee employee, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        employee.setId(storedEmployee.getId());
        getEmployeeService().save(employee);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employee
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> EmployeesItemJsonController.delete(@ModelAttribute Employee employee) {
        getEmployeeService().delete(employee);
        return ResponseEntity.ok().build();
    }
    
}
