	package com.controller;
	
	import java.lang.ProcessBuilder.Redirect;
	import java.util.List;
	
	import javax.servlet.http.HttpServletRequest;
	
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.servlet.view.RedirectView;

import com.dao.StudentDao;
import com.model.Student;
	
	
	@Controller
	public class MainController {
		
		@Autowired
		private StudentDao studentdao;
	
		
		@RequestMapping("/")
		public String home(Model m) {
			List<Student> students = studentdao.getAllStudents();
			
			m.addAttribute("students", students);
			
			return "index";
		}
		
		@RequestMapping("/add-student")
		public String addStudent(Model m) {
			return "add-student";
		}
		
		@RequestMapping(value = "handle-student", method = RequestMethod.POST)
		public RedirectView handleStudent(@ModelAttribute Student student, HttpServletRequest request) {
			System.out.println(student);
			studentdao.createStudent(student);
			RedirectView rd = new RedirectView();
			rd.setUrl(request.getContextPath() + "/");
			return rd;
		}
		
		@RequestMapping("/delete/{sid}")
		public RedirectView deleteProduct(@PathVariable("sid") int sid,HttpServletRequest request) {
			this.studentdao.deleteStudents(sid);
			RedirectView redirectview = new RedirectView();
			redirectview.setUrl(request.getContextPath() + "/");
			return redirectview;
		}
		
		@RequestMapping("/update/{sid}")
		public String UpdateForm(@PathVariable("sid") int sid, Model model ) {
			
			Student s = this.studentdao.getsingleStudent(sid);
			model.addAttribute("s", s);
			
			return "update-form";
		}
	}