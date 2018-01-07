package com.Biz;

import java.util.List;

import com.entity.Student;
import com.entity.StudentDAO;

public class StudentBiz {
	private StudentDAO studentDao;

	public void setStudentDao(StudentDAO studentDao) {
		this.studentDao = studentDao;
	}

	public StudentDAO getStudentDao() {
		return studentDao;
	}
	
	public List<Student> findAll(){
		
		return studentDao.findAll();
	}
}
