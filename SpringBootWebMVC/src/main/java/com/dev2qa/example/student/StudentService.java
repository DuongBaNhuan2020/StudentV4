package com.dev2qa.example.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class StudentService {
	@Autowired StudentRopository repo;
	public void save(Student student) {
		repo.save(student);
	}
	
	public List<Student> listAll() {
		return (List<Student>) repo.findAll();
	}
	
	public Student get(Long id) {
		return repo.findById(id).get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
}
