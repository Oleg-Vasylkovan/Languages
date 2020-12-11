package com.example.language.services;


import java.util.ArrayList;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.language.models.Language;
import com.example.language.repositories.LanguageRepository;

@Service
public class LanguageService {
	public final LanguageRepository languageRepository;
	
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository=languageRepository;
	}
	//find all books
	public ArrayList<Language>allLanguage(){
		return languageRepository.findAll();
	}
	//create a language
	public Language createLanguage(Language l) {
		return languageRepository.save(l);
	}
	//find a single language by id
	public Language findLanguage(Long id) {
		Optional<Language> optionalLanguage = languageRepository.findById(id);
			if(optionalLanguage.isPresent()) {
	            return optionalLanguage.get();
	        } else {
	            return null;
	        }
	}
	//update Language using Potsman
	public Language updateLanguage(Long id, String name, String creator, String currentVersion) {
		Language optionalLanguage = languageRepository.findById(id).get();
		optionalLanguage.setName(name);
		optionalLanguage.setCreator(creator);
		optionalLanguage.setCurrentVersion(currentVersion);
		return languageRepository.save(optionalLanguage);
	}
	//update Language using jsp file
	public Language updateLanguage(Language l) {
		return languageRepository.save(l);
	}
	//delete a language if u using postman
	public void deleteLanguage(Long id) {
		Language optionalLanguage = languageRepository.findById(id).get();
		languageRepository.delete(optionalLanguage);
	}
	//delete a language if u use jsp
	 public void deleteLanguage(Language l) {
    	 languageRepository.delete(l);
	
	 }
}
