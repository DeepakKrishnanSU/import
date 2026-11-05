package com.example.courseapp;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CourseRepository extends JpaRepository<Course, Integer> {
    List<Course> findByCourseNameContainingIgnoreCase(String courseName);
}