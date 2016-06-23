package com.sfy.service.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sfy.bean.Student;
import com.sfy.dao.StudentDao;
import com.sfy.service.StudentService;

@Service("studentService")
public class StudentServiceImp implements StudentService {
	@Autowired
	StudentDao studentDao;

	@Override
	public String login(Student s) {
		return studentDao.login(s);
	}

	@Override
	public int getId(Student s) {
		return studentDao.getId(s);
	}

	@Override
	public String getName(Student s) {
		return studentDao.getName(s);
	}

	@Override
	public Map<String, Object> info(Student s) {
		return studentDao.info(s);
	}

	@Override
	public List<Map<String, Object>> list(Student s) {
		return studentDao.list(s);
	}

	@Override
	public void delete(Student s) {
		studentDao.delete(s);
	}

	@Override
	public String reg(Student s) {
		return studentDao.reg(s);
	}

	@Override
	public void edit(Student s) {
		studentDao.edit(s);
	}

	@Override
	public String editPassword(Student s) {
		return studentDao.editPassword(s);
	}

	@Override
	public Map<String, Object> getInfo(Student s) {
		return studentDao.getInfo(s);
	}

	@Override
	public String check(String username) {
		return studentDao.check(username);
	}

}
