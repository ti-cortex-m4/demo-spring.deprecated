// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.repository;

import static org.assertj.core.api.Assertions.assertThat;

import com.disid.restful.config.SpringDataJpaDetachableRepositoryConfiguration;
import com.disid.restful.dod.DataOnDemandConfiguration;
import com.disid.restful.model.Category;
import com.disid.restful.model.dod.CategoryDataOnDemand;
import com.disid.restful.repository.CategoryRepository;
import com.disid.restful.repository.CategoryRepositoryIT;
import io.springlets.data.domain.GlobalSearch;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.Import;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.test.context.junit4.SpringRunner;

privileged aspect CategoryRepositoryIT_Roo_RepositoryJpaIntegrationTest {
    
    declare @type: CategoryRepositoryIT: @RunWith(SpringRunner.class);
    
    declare @type: CategoryRepositoryIT: @DataJpaTest;
    
    declare @type: CategoryRepositoryIT: @Import({ DataOnDemandConfiguration.class, SpringDataJpaDetachableRepositoryConfiguration.class });
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Rule
    public ExpectedException CategoryRepositoryIT.thrown = ExpectedException.none();
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private CategoryRepository CategoryRepositoryIT.repository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private CategoryDataOnDemand CategoryRepositoryIT.dod;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CategoryRepository
     */
    public CategoryRepository CategoryRepositoryIT.getRepository() {
        return repository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CategoryDataOnDemand
     */
    public CategoryDataOnDemand CategoryRepositoryIT.getDod() {
        return dod;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Before
    public void CategoryRepositoryIT.checkDataOnDemandHasInitializedCorrectly() {
        assertThat(getDod().getRandomCategory())
            .as("Check data on demand for 'Category' initializes correctly by getting a random Category")
            .isNotNull();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CategoryRepositoryIT.countShouldReturnExpectedValue() {
        // Verify
        assertThat(getRepository().count()).as("Check there are available 'Category' entries").isGreaterThan(0);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CategoryRepositoryIT.findOneShouldReturnExistingCategory() {
        // Setup
        Long id = getRandomCategoryId();
        
        // Exercise
        Category category = getRepository().findOne(id);
        
        // Verify
        assertThat(category).as("Check that findOne illegally returned null for id %s", id).isNotNull();
        assertThat(id).as("Check the identifier of the found 'Category' is the same used to look for it")
            .isEqualTo(category.getId());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CategoryRepositoryIT.findAllShouldReturnAllCategories() {
        // Setup
        assertThat(getRepository().count())
            .as("Check the number of entries is not too big (250 entries). "
                + "If it is, please review the tests so it doesn't take too long to run them")
            .isLessThan(250);
        
        // Exercise
        List<Category> result = getRepository().findAll();
        
        // Verify
        assertThat(result).as("Check 'findAll' returns a not null list of entries").isNotNull();
        assertThat(result.size()).as("Check 'findAll' returns a not empty list of entries")
            .isGreaterThan(0);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CategoryRepositoryIT.persistShouldGenerateIdValue() {
        // Setup
        // Exercise
        Category category = getDod().getNewRandomTransientCategory();
        
        // Verify
        assertThat(category).as("Check the Data on demand generated a new non null 'Category'").isNotNull();
        assertThat(category.getId()).as("Check the Data on demand generated a new 'Category' whose id is null")
            .isNull();
        try {
            category = getRepository().saveAndFlush(category);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter
                .hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".")
                    .append(cv.getPropertyPath()).append(": ").append(cv.getMessage())
                    .append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        assertThat(category.getId()).as("Check a 'Category' (%s) id is not null after been persisted", category)
            .isNotNull();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CategoryRepositoryIT.deleteShouldMakeCategoryUnavailable() {
        // Setup
        Long id = getRandomCategoryId();
        Category category = getRepository().findOne(id);
        
        // Exercise
        getRepository().delete(category);
        
        // Verify
        assertThat(getRepository().findOne(id))
        .as("Check the deleted 'Category' %s is no longer available with 'findOne'", category).isNull();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CategoryRepositoryIT.findAllCustomNotFilteredNotPagedShouldReturnAllCategories() {
        // Exercise
        Page<Category> all = getRepository().findAll((GlobalSearch) null, new PageRequest(0, getDod().getSize()));
        
        // Verify
        assertThat(all.getNumberOfElements())
            .as("Check 'findAll' with null 'GlobalSearch' and no pagination returns all entries")
            .isEqualTo(getDod().getSize());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     */
    @Test
    public void CategoryRepositoryIT.findAllCustomNotFilteredPagedShouldReturnACategoriesPage() {
        // Exercise
        Page<Category> all = getRepository().findAll((GlobalSearch) null, new PageRequest(0, 3));
        
        // Verify
        assertThat(all.getNumberOfElements())
            .as("Check result number is not greater than the page size").isLessThanOrEqualTo(3);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    private Long CategoryRepositoryIT.getRandomCategoryId() {
        Category category = getDod().getRandomCategory();
        Long id = category.getId();
        assertThat(id).as("Check the Data on demand generated a 'Category' with an identifier").isNotNull();
        return id;
    }
    
}
