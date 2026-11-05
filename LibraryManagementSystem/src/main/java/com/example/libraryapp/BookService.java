package com.example.libraryapp;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class BookService {
    private final BookRepository repo;

    public BookService(BookRepository repo) {
        this.repo = repo;
    }

    public void save(Book b) { repo.save(b); }
    public List<Book> getAll() { return repo.findAll(); }
    public Optional<Book> getById(int id) { return repo.findById(id); }
    public void delete(int id) { repo.deleteById(id); }
    public List<Book> searchByCategory(String cat) { return repo.findByCategoryContainingIgnoreCase(cat); }
}