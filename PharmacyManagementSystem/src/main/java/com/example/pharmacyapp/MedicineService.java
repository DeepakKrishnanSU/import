package com.example.pharmacyapp;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class MedicineService {
    private final MedicineRepository repo;

    public MedicineService(MedicineRepository repo) {
        this.repo = repo;
    }

    public String saveMedicine(Medicine m) {
        if (m.getQuantity() < 0) return "Stock cannot be negative!";
        repo.save(m);
        return "SUCCESS";
    }

    public List<Medicine> getAll() { return repo.findAll(); }
    public Optional<Medicine> getById(int id) { return repo.findById(id); }
    public List<Medicine> searchByName(String name) { return repo.findByMedicineNameContainingIgnoreCase(name); }
    public void delete(int id) { repo.deleteById(id); }
}