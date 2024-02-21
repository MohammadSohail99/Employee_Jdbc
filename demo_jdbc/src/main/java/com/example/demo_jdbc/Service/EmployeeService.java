package com.example.demo_jdbc.Service;
import com.example.demo_jdbc.EmployeeRepo.EmployeeRepo;
import com.example.demo_jdbc.Model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService implements EmployeeServiceInt {
    @Autowired
    EmployeeRepo employeeRepo;
    public EmployeeService(){

    }
    @Override
    public String add(Employee employee) {
        if(employeeRepo.existsById(employee.getId())){
            System.out.println("1");
            return "Duplicate";
        }
        else if (employees().stream().anyMatch(i -> i.getName().equalsIgnoreCase(employee.getName()))) {
            System.out.println("2");
            return "NotAdded";
        }
        else if (employee == null || employee.getId() <= 0 || employee.getDesignation().isBlank() || employee.getName().isBlank() || employee.getEmail().isBlank()) {
            System.out.println("3");
            return "Null";
        }
        employeeRepo.save(employee);
        return "addedResult";
    }

    @Override
    public Employee update(Employee employee) {
        Employee empUpdate = employeeRepo.findById(employee.getId()).get();
        empUpdate.setEmail(empUpdate.getEmail());
        empUpdate.setName(employee.getName());
        empUpdate.setDesignation(employee.getDesignation());
        return employeeRepo.save(employee);
    }

    @Override
    public Employee getEmployee(int id) {
        if(employeeRepo.existsById(id)){
            return employeeRepo.findById(id).get();
        }
        return null;
    }

    @Override
    public Employee delete(int id) {
        if(employeeRepo.existsById(id)){
            Employee emp = employeeRepo.findById(id).get();
            employeeRepo.deleteById(id);
            return emp;
        }
        return null;
    }

    @Override
    public List<Employee> employees() {
        return employeeRepo.findAll();
    }

    @Override
    public Employee search(int id) {
        return null;
    }

    @Override
    public List<Employee> deleteByName(String name) {
        List<Employee> emplDeleteByName = employeeRepo.findAll().stream().filter(i -> i.getName().equalsIgnoreCase(name)).toList();

        if(emplDeleteByName.size() == 1){
            int id = emplDeleteByName.stream().findFirst().get().getId();
            employeeRepo.deleteById(id);
            return emplDeleteByName;
        }
        return emplDeleteByName;
    }
}


