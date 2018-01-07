package com.Action;

import java.util.List;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;

import com.Biz.StudentBiz;
import com.entity.Student;

public class StudentListAction {

	private StudentBiz studentBiz;
	 private String result;
	 

	public void setStudentBiz(StudentBiz studentBiz) {
		this.studentBiz = studentBiz;
	}

	public StudentBiz getStudentBiz() {
		return studentBiz;
	}
	
	public void setResult(String result) {
		this.result = result;
	}

	public String getResult() {
		return result;
	}
	
	public String execute(){
		List<Student> slist = studentBiz.findAll();
		 JSONArray jb=JSONArray.fromObject(slist);
		  result=jb.toString();
	//	ServletActionContext.getRequest().setAttribute("slist",slist );
		return "success";
	}


}
