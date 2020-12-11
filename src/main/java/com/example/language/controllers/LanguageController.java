package com.example.language.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.language.models.Language;
import com.example.language.services.LanguageService;


@Controller
public class LanguageController {
	private final LanguageService languageService;
	public LanguageController(LanguageService languageService) {
		this.languageService = languageService;
		}
	//Showing the All languages
	@RequestMapping("/languages")
	public String index(Model model) {
		List<Language> language = languageService.allLanguage();
		model.addAttribute("language", language);
        return "index.jsp";
	}
	//create a new language
	@RequestMapping("/languages/create")
	public String create(@ModelAttribute("language") Language language, Model model, BindingResult results) {
		if(results.hasErrors()) {
			List<Language> languages = languageService.allLanguage();
			model.addAttribute("languages", languages);
			return "index.jsp";
		}else {
			languageService.createLanguage(language);
			return "redirect:/languages";
		}
	}
	//Show one language
	@RequestMapping("/languages/{id}")
	public String showOne(@PathVariable("id")Long id, Model model) {
		Language oneLanguage = languageService.findLanguage(id);
		model.addAttribute("languages", oneLanguage);
		return "showOne.jsp";
	}
	//update one language
	@RequestMapping("/languages/{id}/edit")
    public String edit(@PathVariable("id") Long id, Model model) {
        Language language = languageService.findLanguage(id);
        model.addAttribute("language", language);
        return "edit.jsp";
    }
	@RequestMapping(value="/languages/{id}", method=RequestMethod.PUT)
	public String update(@Valid @ModelAttribute("language") Language language, BindingResult result) {
		if (result.hasErrors()) {
            return "edit.jsp";
        } else {
            languageService.updateLanguage(language);
            return "redirect:/languages";
        }
	}
	
	//Delete one language
	@RequestMapping(value="/languages/delete/{id}")
    public String destroy(@PathVariable("id") Long id) {
    	Language language = languageService.findLanguage(id);
    	languageService.deleteLanguage(language);
        	return "redirect:/languages";
        } 
	
}
