package com.example.employeeapp;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EmployeeController {
    private final EmployeeService service;

    public EmployeeController(EmployeeService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("employee", new Employee());
        model.addAttribute("isEdit", false);
        return "employee-form";
    }

    @PostMapping("/saveEmployee")
    public String save(@ModelAttribute Employee emp) {
        service.save(emp);
        return "redirect:/employees";
    }

    @GetMapping("/employees")
    public String list(@RequestParam(value = "searchId", required = false) Integer searchId, Model model) {
        List<Employee> list = new ArrayList<>();
        if (searchId != null) {
            service.getById(searchId).ifPresent(list::add);
        } else {
            list = service.getAll();
        }
        model.addAttribute("employees", list);
        return "employee-list";
    }

    @GetMapping("/editEmployee/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        service.getById(id).ifPresent(e -> {
            model.addAttribute("employee", e);
            model.addAttribute("isEdit", true);
        });
        return "employee-form";
    }

    @GetMapping("/deleteEmployee/{id}")
    public String delete(@PathVariable("id") int id) {
        service.delete(id);
        return "redirect:/employees";
    }
}