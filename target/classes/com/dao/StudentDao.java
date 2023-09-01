package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.model.Student;

@Component
public class StudentDao {
	
	@Autowired
	private HibernateTemplate hibernatetemplete;
	
	@Transactional
	public void createStudent(Student s) {
		this.hibernatetemplete.saveOrUpdate(s);
	}
	
	public List<Student> getAllStudents() {
		List<Student> s = this.hibernatetemplete.loadAll(Student.class);
		return s;
	}
	
	@Transactional
	public void deleteStudents(int sid) {
		Student s = this.hibernatetemplete.load(Student.class, sid);
		this.hibernatetemplete.delete(s);
	}
	
	@Transactional
	public Student getsingleStudent(int sid) {
		return this.hibernatetemplete.get(Student.class,sid);
	}
	
	
}
