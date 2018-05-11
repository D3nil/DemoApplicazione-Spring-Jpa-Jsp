/**
 * 
 */
package org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.exception.ResourceNotFoundException;
import org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.model.Fornitore;
import org.consoft.APP.DemoPortaleFornitoriAppSpringJpa.repository.FornitoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

//import com.google.gson.Gson;

/**
 * @author Denilson
 */
@RestController
@RequestMapping("/api")
public class FornitoreController {
	@Autowired
	FornitoreRepository fornitoreRepository;
//
//	@Value("${application.message:Hello World}")
//	private String hello;

	@GetMapping("/PageLogin.htm")
	public ModelAndView vista() {

		String message = "asdsad";
		return new ModelAndView("login", "message", message);
	}

	@GetMapping("/Suppliers.htm")
	public ModelAndView viewsSuppliers(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		//Gson gson = new Gson();
		List<Fornitore> fornitori = getAllFornitori();
		//String json = gson.toJson(fornitori);

		return new ModelAndView("ViewFornitore", "lista", fornitori);
	}


	// Get All Fornitores
	@GetMapping("/fornitori")
	public List<Fornitore> getAllFornitori() {
		return fornitoreRepository.findAll();

	}

	// Create a new Fornitore
	@PostMapping("/fornitori")
	public Fornitore createNote(@Valid @RequestBody Fornitore fornitore) {
		return fornitoreRepository.save(fornitore);
	}

	// Get a Single Fornitore
	@GetMapping("/fornitore/{id}")
	public Fornitore getNoteById(@PathVariable(value = "id") Long idFornitore) {
		return fornitoreRepository.findById(idFornitore)
				.orElseThrow(() -> new ResourceNotFoundException("Fornitore", "idFornitore", idFornitore));
	}

	// Update a Note
	// @PutMapping("/fornitori/{idFornitore}")
	// public Fornitore updateNote(@PathVariable(value = "idFornitore") Long noteId
	// , @Valid @RequestBody Fornitore noteDetails)
	// {
	//
	// Note note = noteRepository.findById(noteId)
	// .orElseThrow(() -> new ResourceNotFoundException("Note", "id", noteId));
	//
	// note.setTitle(noteDetails.getTitle());
	// note.setContent(noteDetails.getContent());
	//
	// Note updatedNote = noteRepository.save(note);
	// return updatedNote;
	// }
	// Delete a Note
	@DeleteMapping("/fornitore/{idFornitore}")
	public ResponseEntity<?> deleteNote(@PathVariable(value = "idFornitore") Long idFornitore) {
		Fornitore f = fornitoreRepository.findById(idFornitore)
				.orElseThrow(() -> new ResourceNotFoundException("Fornitore", "idFornitore", idFornitore));

		fornitoreRepository.delete(f);
		return ResponseEntity.ok().build();
	}

}
