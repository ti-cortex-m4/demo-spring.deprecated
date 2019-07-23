// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package demo.web;

import demo.domain.Timer;
import demo.service.api.TimerService;
import demo.web.TimersItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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

privileged aspect TimersItemJsonController_Roo_JSON {
    
    declare @type: TimersItemJsonController: @RestController;
    
    declare @type: TimersItemJsonController: @RequestMapping(value = "/api/timers/{timer}", name = "TimersItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private TimerService TimersItemJsonController.timerService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param timerService
     */
    @Autowired
    public TimersItemJsonController.new(TimerService timerService) {
        this.timerService = timerService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return TimerService
     */
    public TimerService TimersItemJsonController.getTimerService() {
        return timerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param timerService
     */
    public void TimersItemJsonController.setTimerService(TimerService timerService) {
        this.timerService = timerService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Timer
     */
    @ModelAttribute
    public Timer TimersItemJsonController.getTimer(@PathVariable("timer") Long id) {
        Timer timer = timerService.findOne(id);
        if (timer == null) {
            throw new NotFoundException(String.format("Timer with identifier '%s' not found",id));
        }
        return timer;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param timer
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> TimersItemJsonController.show(@ModelAttribute Timer timer) {
        return ResponseEntity.ok(timer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param timer
     * @return UriComponents
     */
    public static UriComponents TimersItemJsonController.showURI(Timer timer) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(TimersItemJsonController.class).show(timer))
            .buildAndExpand(timer.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedTimer
     * @param timer
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> TimersItemJsonController.update(@ModelAttribute Timer storedTimer, @Valid @RequestBody Timer timer, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        timer.setId(storedTimer.getId());
        getTimerService().save(timer);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param timer
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> TimersItemJsonController.delete(@ModelAttribute Timer timer) {
        getTimerService().delete(timer);
        return ResponseEntity.ok().build();
    }
    
}
