package com.example.hospitalapp;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class PatientService {
    private final PatientRepository repo;

    public PatientService(PatientRepository repo) {
        this.repo = repo;
    }

    public void save(Patient p) {
        repo.save(p);
    }

    public List<Patient> getAll() {
        return repo.findAll();
    }

    public Optional<Patient> getById(int id) {
        return repo.findById(id);
    }

    public void delete(int id) {
        repo.deleteById(id);
    }
}