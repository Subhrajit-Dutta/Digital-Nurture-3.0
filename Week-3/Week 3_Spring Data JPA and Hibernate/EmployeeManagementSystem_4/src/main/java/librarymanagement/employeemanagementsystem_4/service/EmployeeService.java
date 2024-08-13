package librarymanagement.employeemanagementsystem_4.service;


import librarymanagement.employeemanagementsystem_4.entity.Employee;
import librarymanagement.employeemanagementsystem_4.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    // Create or Update an Employee
    public Employee saveEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    // Get all Employees
    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }

    // Get an Employee by ID
    public Employee getEmployeeById(Long id) {
        return employeeRepository.findById(id).orElse(null);
    }

    // Delete an Employee by ID
    public void deleteEmployee(Long id) {
        employeeRepository.deleteById(id);
    }
}