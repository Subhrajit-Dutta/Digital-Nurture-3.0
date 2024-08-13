package librarymanagement.employeemanagementsystem_4.repository;

import librarymanagement.employeemanagementsystem_4.entity.Department;
import librarymanagement.employeemanagementsystem_4.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {

    List<Employee> findByName(String name);
    List<Employee> findByDepartment(Department department);
}
