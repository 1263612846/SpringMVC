package com.sfy.dao.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.sfy.bean.Student;
import com.sfy.dao.StudentDao;

@Repository("studentDao")
public class StudentDaoImp implements StudentDao {
	@Autowired
	JdbcTemplate jt;

	@Override
	public String login(Student s) {
		String sql = "select password from student where username=?";
		
		try {
			String password = jt.queryForObject(sql, new Object[] { s.getUsername() }, String.class);
			if (password.equals(s.getPassword())) {
				return "Success";
			} else {
				return "Fail";
			}
		} catch (Exception e) {
			return "Fail";
		}
	}

	@Override
	public int getId(Student s) {
		String sql = "select id from student where username=?";

		try {
			return jt.queryForObject(sql, new Object[] { s.getUsername() }, int.class);
		} catch (Exception e) {
			return 0;
		}
	}

	@Override
	public String getName(Student s) {
		String sql = "select name from student where username=?";

		try {
			return jt.queryForObject(sql, new Object[] { s.getUsername() }, String.class);
		} catch (Exception e) {
			return "";
		}
	}

	@Override
	public Map<String, Object> info(Student s) {
		String sql = "select * from student where id=?";

		return jt.queryForMap(sql, new Object[] { s.getId() });
	}

	@Override
	public List<Map<String, Object>> list(Student s) {
		String sql = "select * from student";

		return jt.queryForList(sql);
	}

	@Override
	public void delete(Student s) {
		String sql = "delete from student where id=?";

		jt.update(sql, new Object[] { s.getId() });
	}

	@Override
	public String reg(Student s) {
		String sql1 = "select id from student where username=?";
		String sql2 = "insert into student(username,password,regtime) values(?,?,now())";

		try {
			jt.queryForObject(sql1, new Object[] { s.getUsername() }, int.class);
			return "该用户名已被占用，请更换用户名，重新注册。";
		} catch (Exception e) {
			try {
				jt.update(sql2, new Object[] { s.getUsername(), s.getPassword() });
				return "注册成功！";
			} catch (Exception e1) {
				return "注册失败。。。";
			}
		}
	}

	@Override
	public void edit(Student s) {
		String sql = "update student set num=?,name=?,age=?,sex=?,school=?,major=? where id=?";

		jt.update(sql, new Object[] { s.getNum(), s.getName(), s.getAge(), s.getSex(), s.getSchool(), s.getMajor(),
				s.getId() });
	}

	@Override
	public String editPassword(Student s) {
		String sql = "update student set password=? where id=?";

		try {
			jt.update(sql, new Object[] { s.getPassword(), s.getId() });
			return "修改成功！";
		} catch (Exception e) {
			return "修改失败。。。";
		}
	}

	@Override
	public Map<String, Object> getInfo(Student s) {
		String sql = "select * from student where username=?";
		return jt.queryForMap(sql, new Object[] { s.getUsername() });
	}

	@Override
	public String check(String username) {
		String sql = "select * from student where username=?";
		
		try {
			jt.queryForMap(sql, new Object[] { username });
			return "exist";
		} catch (Exception e) {
			return "none";
		}
	}

}
