package com.example.donorapp;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class BloodDonorService {
    private final BloodDonorRepository repo;

    public BloodDonorService(BloodDonorRepository repo) {
        this.repo = repo;
    }

    public String saveDonor(BloodDonor d) {
        if (d.getAge() < 18 || d.getAge() > 65) {
            return "Ineligible: Donor age must be between 18 and 65!";
        }
        repo.save(d);
        return "SUCCESS";
    }

    public List<BloodDonor> getAll() { return repo.findAll(); }
    public Optional<BloodDonor> getById(int id) { return repo.findById(id); }
    public List<BloodDonor> searchByBloodGroup(String bg) { return repo.findByBloodGroupIgnoreCase(bg.trim()); }
    public void delete(int id) { repo.deleteById(id); }
}