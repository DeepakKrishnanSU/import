package com.example.courseapp;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class CourseService {
    private final CourseRepository repo;

    public CourseService(CourseRepository repo) {
        this.repo = repo;
    }

    public String saveCourse(Course c) {
        if (c.getCourseCapacity() <= 0) {
            return "Course capacity must be greater than 0!";
        }
        repo.save(c);
        return "SUCCESS";
    }

    public List<Course> getAll() { return repo.findAll(); }
    public Optional<Course> getById(int id) { return repo.findById(id); }
    public void delete(int id) { repo.deleteById(id); }
    public List<Course> searchByName(String name) { return repo.findByCourseNameContainingIgnoreCase(name); }
}