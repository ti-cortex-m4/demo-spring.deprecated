// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.config;

import io.tracee.binding.cxf.TraceeCxfFeature;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.xml.ws.Endpoint;
import org.apache.cxf.Bus;
import org.apache.cxf.feature.LoggingFeature;
import org.apache.cxf.jaxws.EndpointImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.condition.ConditionalOnWebApplication;
import org.springframework.boot.context.embedded.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.jpa.support.OpenEntityManagerInViewFilter;
import org.springframework.roo.northwind.application.config.WsEndpointsConfiguration;
import org.springframework.roo.northwind.application.ws.endpoint.CategoryWebServiceEndpoint;
import org.springframework.roo.northwind.service.api.CategoryService;

privileged aspect WsEndpointsConfiguration_Roo_WS_Endpoints {
    
    declare @type: WsEndpointsConfiguration: @Configuration;
    
    declare @type: WsEndpointsConfiguration: @ConditionalOnWebApplication;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private static final Logger WsEndpointsConfiguration.LOGGER = LoggerFactory.getLogger(WsEndpointsConfiguration.class);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private Bus WsEndpointsConfiguration.bus;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Value("${cxf.path}")
    private String WsEndpointsConfiguration.cxfServletPath;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private CategoryService WsEndpointsConfiguration.categoryService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Logger
     */
    public Logger WsEndpointsConfiguration.getLOGGER() {
        return LOGGER;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Bus
     */
    public Bus WsEndpointsConfiguration.getBus() {
        return bus;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String WsEndpointsConfiguration.getCxfServletPath() {
        return cxfServletPath;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cxfServletPath
     */
    public void WsEndpointsConfiguration.setCxfServletPath(String cxfServletPath) {
        this.cxfServletPath = cxfServletPath;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CategoryService
     */
    public CategoryService WsEndpointsConfiguration.getCategoryService() {
        return categoryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Endpoint
     */
    @Bean
    public Endpoint WsEndpointsConfiguration.categoryWebServiceEndpoint() {
        EndpointImpl endpoint = new EndpointImpl(getBus(), new CategoryWebServiceEndpoint(getCategoryService()));
        endpoint.setFeatures(Arrays.asList(new TraceeCxfFeature(), new LoggingFeature()));
        endpoint.publish("/CategoryWebService");
        return endpoint;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return FilterRegistrationBean
     */
    @Bean
    public FilterRegistrationBean WsEndpointsConfiguration.openEntityManagerInViewFilter() {
        FilterRegistrationBean filterRegBean = new FilterRegistrationBean();
        filterRegBean.setFilter(new OpenEntityManagerInViewFilter());
        List<String> urlPatterns = new ArrayList<String>();
        urlPatterns.add(getCxfServletPath() + "/*");
        filterRegBean.setUrlPatterns(urlPatterns);
        if (getLOGGER().isDebugEnabled()) {
            getLOGGER().debug("Registering the 'OpenEntityManagerInViewFilter' filter for the '"
                .concat(getCxfServletPath() + "/*").concat("' URL."));
        }
        return filterRegBean;
    }
    
}