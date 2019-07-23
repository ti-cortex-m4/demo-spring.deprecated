// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.northwind.application.web;

import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.northwind.application.web.PartiesItemJsonController;
import org.springframework.roo.northwind.model.Party;
import org.springframework.roo.northwind.service.api.PartyService;
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

privileged aspect PartiesItemJsonController_Roo_JSON {
    
    declare @type: PartiesItemJsonController: @RestController;
    
    declare @type: PartiesItemJsonController: @RequestMapping(value = "/api/parties/{party}", name = "PartiesItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PartyService PartiesItemJsonController.partyService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param partyService
     */
    @Autowired
    public PartiesItemJsonController.new(PartyService partyService) {
        this.partyService = partyService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return PartyService
     */
    public PartyService PartiesItemJsonController.getPartyService() {
        return partyService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param partyService
     */
    public void PartiesItemJsonController.setPartyService(PartyService partyService) {
        this.partyService = partyService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Party
     */
    @ModelAttribute
    public Party PartiesItemJsonController.getParty(@PathVariable("party") Long id) {
        Party party = partyService.findOne(id);
        if (party == null) {
            throw new NotFoundException(String.format("Party with identifier '%s' not found",id));
        }
        return party;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param party
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> PartiesItemJsonController.show(@ModelAttribute Party party) {
        return ResponseEntity.ok(party);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param party
     * @return UriComponents
     */
    public static UriComponents PartiesItemJsonController.showURI(Party party) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(PartiesItemJsonController.class).show(party))
            .buildAndExpand(party.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedParty
     * @param party
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> PartiesItemJsonController.update(@ModelAttribute Party storedParty, @Valid @RequestBody Party party, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        party.setId(storedParty.getId());
        getPartyService().save(party);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param party
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> PartiesItemJsonController.delete(@ModelAttribute Party party) {
        getPartyService().delete(party);
        return ResponseEntity.ok().build();
    }
    
}
