package com.example.employeeapp;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {
    private final EmployeeRepository repo;

    public EmployeeService(EmployeeRepository repo) {
        this.repo = repo;
    }

    public void save(Employee e) { repo.save(e); }
    public List<Employee> getAll() { return repo.findAll(); }
    public Optional<Employee> getById(int id) { return repo.findById(id); }
    public void delete(int id) { repo.deleteById(id); }
    public List<Employee> searchByDept(String dept) { return repo.findByDepartmentContainingIgnoreCase(dept); }
}