package com.example.stu.service;


import com.example.stu.pojo.Student;
import java.util.List;

public interface StudentService {

    //service表示业务逻辑层,定义的每一个方法实际上对应的就是用户的一个需求(请求)

    public boolean login(int uid,String pwd);

    public boolean type(int uid,String pwd);

    public boolean addLogin(int uid, String pwd);

    public List<Student> getAllStudents();

    public List<Student> queryStudentsByPageNo(int current, int pageSize);

    public Student deleteStudent(int sno);

    public Student queryStudentBySno(int sno);

    public int updateStudentBySno(int sno, Student stu) ;

    public int getTotalCount();

    public int addStudent(Student student);

}

