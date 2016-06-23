package com.sfy.controller;

import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sfy.bean.Student;
import com.sfy.service.StudentService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class StudentController extends Student {
	@Autowired
	StudentService studentService;

	@RequestMapping("login")
	public String login(Student s, Model m) {
		id = studentService.getId(s);
		name = studentService.getName(s);
		m.addAttribute("id", id);
		m.addAttribute("name", name);
		return studentService.login(s);
	}

	@RequestMapping("info")
	public String info(Student s, Model m) {
		map = studentService.info(s);
		m.addAllAttributes(map);
		return "Info";
	}

	@RequestMapping("list")
	public String list(Student s, Model m) {
		list = studentService.list(s);
		m.addAttribute("list", list);
		return "List";
	}

	@RequestMapping("delete")
	public String delete(Student s, Model m) {
		studentService.delete(s);
		list = studentService.list(s);
		m.addAttribute("list", list);
		return "List";
	}

	@RequestMapping("reg")
	public void reg(Student s, PrintWriter pw) {
		result = studentService.reg(s);
		pw.print(result);
	}

	@RequestMapping("viewEdit")
	public String viewEdit(Student s, Model m) {
		map = studentService.info(s);
		m.addAllAttributes(map);
		return "Edit";
	}

	@RequestMapping("edit")
	public String edit(Student s, Model m) {
		studentService.edit(s);
		map = studentService.info(s);
		m.addAllAttributes(map);
		return "Info";
	}

	@RequestMapping("viewEditPassword")
	public String viewEditPassword(int id, Model m) {
		m.addAttribute("id", id);
		return "Password";
	}

	@RequestMapping("editPassword")
	public void editPassword(Student s, PrintWriter pw) {
		result = studentService.editPassword(s);
		pw.print(result);
	}

	@RequestMapping("getInfo")
	public void getInfo(Student s, PrintWriter pw) {
		map = studentService.getInfo(s);
		jo = JSONObject.fromObject(map);
		pw.print(jo);
	}

	@RequestMapping("getList")
	public void getList(Student s, PrintWriter pw) {
		list = studentService.list(s);
		ja = JSONArray.fromObject(list);
		pw.print(ja);
	}

	@RequestMapping(value = "get", method = RequestMethod.GET)
	public void get(String text, PrintWriter pw) {
		pw.print(text);
	}

	@RequestMapping(value = "post", method = RequestMethod.POST)
	public void post(String text, PrintWriter pw) {
		pw.print(text);
	}

	@RequestMapping("check")
	public void check(String username, PrintWriter pw) {
		result = studentService.check(username);
		pw.print(result);
	}

}
