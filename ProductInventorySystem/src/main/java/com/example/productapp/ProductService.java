package com.example.productapp;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
    private final ProductRepository repo;

    public ProductService(ProductRepository repo) {
        this.repo = repo;
    }

    public void save(Product p) { repo.save(p); }
    public List<Product> getAll() { return repo.findAll(); }
    public Optional<Product> getById(int id) { return repo.findById(id); }
    public void delete(int id) { repo.deleteById(id); }
    public List<Product> searchByName(String name) { return repo.findByProductNameContainingIgnoreCase(name); }
}