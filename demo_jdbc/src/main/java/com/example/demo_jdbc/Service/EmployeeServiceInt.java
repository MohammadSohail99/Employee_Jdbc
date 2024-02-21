package com.example.demo_jdbc.Service;

import com.example.demo_jdbc.Model.Employee;

import java.util.List;

public interface EmployeeServiceInt {
    public String add(Employee employee);
    public Employee update(Employee employee);
    public Employee getEmployee(int id);
    public Employee delete(int id);
    public List<Employee> employees();
    public Employee search(int id);

    List<Employee> deleteByName(String name);
}

