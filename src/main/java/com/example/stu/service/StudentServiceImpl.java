package com.example.stu.service;


import com.example.stu.dao.StudentDao;
import com.example.stu.dao.StudentDaoImpl;
import com.example.stu.pojo.Student;

import java.util.List;

public class StudentServiceImpl implements StudentService {

    StudentDao dao = new StudentDaoImpl();

    //登陆
    @Override
    public boolean login(int uid, String pwd) {
        return dao.login(uid, pwd);
    }
    //检查用户身份
    @Override
    public boolean type(int uid, String pwd) {
        return dao.Type(uid,pwd);
    }

    // 注册
    @Override
    public boolean addLogin(int uid, String pwd){
        return dao.addLogin(uid, pwd);
    }

    // 查询所有学生
    @Override
    public List<Student> getAllStudents() {
        return dao.getAllStudents();
    }

    // 分页查询
    @Override
    public List<Student> queryStudentsByPageNo(int current, int pageSize) {
        return dao.queryStudentByPage(current,pageSize);
    }

    // 删除学生
    @Override
    public Student deleteStudent(int sno){
        return dao.deleteStudent(sno);
    }

    // 修改学生信息，要先根据学号查询学生信息
    public Student queryStudentBySno(int sno) {
        return dao.queryStudentBySno(sno);

    }

    //更改学生信息
    public int updateStudentBySno(int sno, Student stu) {
        return dao.updateStudentBySno(sno,stu);
    }

    //查询总条数
    @Override
    public int getTotalCount() {
        return dao.getTotalCount();
    }

    @Override
    public int addStudent(Student student) {
        return dao.addStudent(student);
    }

}

