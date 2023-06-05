package com.example.stu.pojo;

import java.util.List;

//分页帮助类
public class Page {
    private int currentPage;  //当前页面
    private int pageSize;     //一页有多少条数据
    private int totalCount;   //一共有多少条数据
    private int totalPage;    //一共有多少页
    private List<Student> student;
    public Page() {

    }
    public Page(int currentPage, int pageSize, int totalCount, int totalPage, List<Student> student) {
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.totalCount = totalCount;
        this.totalPage = totalPage;
        this.student = student;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<Student> getStudent() {
        return student;
    }

    public void setStudent(List<Student> student) {
        this.student = student;
    }
}

