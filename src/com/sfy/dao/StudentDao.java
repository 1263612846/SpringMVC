package com.sfy.dao;

import java.util.List;
import java.util.Map;

import com.sfy.bean.Student;

public interface StudentDao {

	String login(Student s);

	int getId(Student s);

	String getName(Student s);

	Map<String, Object> info(Student s);

	List<Map<String, Object>> list(Student s);

	void delete(Student s);

	String reg(Student s);

	void edit(Student s);

	String editPassword(Student s);

	Map<String, Object> getInfo(Student s);

	String check(String username);

}
