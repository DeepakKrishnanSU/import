package com.example.courseapp;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CourseController {
    private final CourseService service;

    public CourseController(CourseService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("course", new Course());
        model.addAttribute("isEdit", false);
        return "course-form";
    }

    @PostMapping("/saveCourse")
    public String save(@ModelAttribute Course course) {
        service.saveCourse(course);
        return "redirect:/courses";
    }

    @GetMapping("/courses")
    public String list(@RequestParam(value = "searchId", required = false) Integer searchId, Model model) {
        List<Course> list = new ArrayList<>();
        if (searchId != null) {
            service.getById(searchId).ifPresent(list::add);
        } else {
            list = service.getAll();
        }
        model.addAttribute("courses", list);
        return "course-list";
    }

    @GetMapping("/editCourse/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        service.getById(id).ifPresent(c -> {
            model.addAttribute("course", c);
            model.addAttribute("isEdit", true);
        });
        return "course-form";
    }

    @GetMapping("/deleteCourse/{id}")
    public String delete(@PathVariable("id") int id) {
        service.delete(id);
        return "redirect:/courses";
    }
}