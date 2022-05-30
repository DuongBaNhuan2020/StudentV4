package com.dev2qa.example.student;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	@RequestMapping(value={"/studentList", "/"})
	public ModelAndView home() {
		List<Student> listStudent = studentService.listAll();
		ModelAndView mav = new ModelAndView("student_manager");
		mav.addObject("listStudent", listStudent);
		return mav;
	}
	@RequestMapping("/new")
	public String newStudentForm(Map<String, Object> model) {
//		if (!model.containsKey("student")) {
//			model.put("student",new Student());
//		}
		model.put("student",new Student());
		List<String> professionList = Arrays.asList("Marth", "Literater", "Geoagraphy", "Chemical");
		model.put("professionList", professionList);
		System.out.println("co vao day /new");
		return "student_new";
	}
	@RequestMapping("/detailStudent")
	public ModelAndView detailStudent(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("student_detail");
		Student student =studentService.get(id);
		mav.addObject("stu", student);
		
		return mav;
	}
	@RequestMapping("/editStudent")
	public ModelAndView editStudent(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("student_edit");
		Student student =studentService.get(id);
		mav.addObject("student", student);
		List<String> professionList = Arrays.asList("Marth", "Literater", "Geoagraphy", "Chemical");
		mav.addObject("professionList", professionList);
		return mav;
	}
	@RequestMapping(value = "/saveStudent", method = RequestMethod.POST)
	public String saveStudent(@ModelAttribute("student")  @Validated Student student, BindingResult result,Map<String, Object> model) {
		if (result.hasErrors()) {
			System.out.println("co vao error method");
			List<String> professionList = Arrays.asList("Marth", "Literater", "Geoagraphy", "Chemical");
			model.put("professionList", professionList);
			return "student_new";
		}else {
			studentService.save(student);
			return "redirect:/";
		}
	}
	@RequestMapping(value = "/saveEditedStudent", method = RequestMethod.POST)
	public String saveEditedStudent(@ModelAttribute("student")  @Validated Student student, BindingResult result,Map<String, Object> model) {
		if (result.hasErrors()) {
			System.out.println("co vao error method");
			List<String> professionList = Arrays.asList("Marth", "Literater", "Geoagraphy", "Chemical");
			model.put("professionList", professionList);
			return "student_edit";
		}else {
			studentService.save(student);
			return "redirect:/";
		}
	}
	@RequestMapping("/delete")
	public String deleteStudentForm(@RequestParam long id) {
		studentService.delete(id);
		return "redirect:/";		
	}
}
