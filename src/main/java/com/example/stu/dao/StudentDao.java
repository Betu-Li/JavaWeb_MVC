package com.example.stu.dao;


import com.example.stu.pojo.Student;

import java.util.List;

public interface StudentDao {

    public boolean login(int uid ,String pwd);
    public boolean Type(int uid,String pwd);

    public boolean addLogin(int uid, String pwd);

    public List<Student> getAllStudents();

    public List<Student> queryStudentByPage(int currentPage,int pageSize);

    public Student deleteStudent(int sno);

    public Student queryStudentBySno(int sno);

    public int updateStudentBySno(int sno,Student stu);

    //查询总数据数
    public int getTotalCount();

    public int addStudent(Student student);


}

