package com.example.stu.pojo;

public class Student {
    private int sno;
    private String sname;
    private String sex;
    private int age;
    private int grades;

    public Student(int sno, String sname, String sex, int age, int grades) {
        this.sno = sno;
        this.sname = sname;
        this.sex = sex;
        this.age = age;
        this.grades = grades;
    }

    public Student() {

    }

    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getgrades() {
        return grades;
    }

    public void setgrades(int grades) {
        this.grades = grades;
    }
}

