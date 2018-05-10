/**
 * 
 */
package org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.controller;

import java.util.List;

import javax.validation.Valid;

import org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.exception.ResourceNotFoundException;
import org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.model.Fornitore;
import org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.repository.FornitoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.servlet.WebMvcProperties.View;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Denilson
 */
@RestController
@RequestMapping("/api")
public class FornitoreController 
{
	@Autowired
	FornitoreRepository fornitoreRepository;
	// Get All Fornitores
	@GetMapping("/fornitori")
	public List<Fornitore> getAllFornitori() 
	{
	    return fornitoreRepository.findAll();
	    
	}
	// Create a new Fornitore
	@PostMapping("/fornitori")
	public Fornitore createNote(@Valid @RequestBody Fornitore fornitore)
	{
	    return fornitoreRepository.save(fornitore);
	}
	// Get a Single Fornitore
	@GetMapping("/fornitore/{id}")
	public Fornitore getNoteById(@PathVariable(value = "id") Long idFornitore) {
	    return fornitoreRepository.findById(idFornitore)
	            .orElseThrow(() -> new ResourceNotFoundException("Fornitore", "idFornitore", idFornitore));
	}
	// Update a Note
//	@PutMapping("/fornitori/{idFornitore}")
//	public Fornitore updateNote(@PathVariable(value = "idFornitore") Long noteId , @Valid @RequestBody Fornitore noteDetails) 
//	{
//
//	    Note note = noteRepository.findById(noteId)
//	            .orElseThrow(() -> new ResourceNotFoundException("Note", "id", noteId));
//
//	    note.setTitle(noteDetails.getTitle());
//	    note.setContent(noteDetails.getContent());
//
//	    Note updatedNote = noteRepository.save(note);
//	    return updatedNote;
//	}
	// Delete a Note
	@DeleteMapping("/fornitore/{idFornitore}")
	public ResponseEntity<?> deleteNote(@PathVariable(value = "idFornitore") Long idFornitore) {
	    Fornitore f = fornitoreRepository.findById(idFornitore)
	            .orElseThrow(() -> new ResourceNotFoundException("Fornitore", "idFornitore", idFornitore));

	    fornitoreRepository.delete(f);
	    return ResponseEntity.ok().build();
	}

	
}
