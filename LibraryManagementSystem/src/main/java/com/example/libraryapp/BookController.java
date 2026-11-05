package com.example.libraryapp;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class BookController {
    private final BookService service;

    public BookController(BookService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("book", new Book());
        model.addAttribute("isEdit", false);
        return "book-form";
    }

    @PostMapping("/saveBook")
    public String save(@ModelAttribute Book book) {
        service.save(book);
        return "redirect:/books";
    }

    @GetMapping("/books")
    public String list(@RequestParam(value = "searchId", required = false) Integer searchId, Model model) {
        List<Book> list = new ArrayList<>();
        if (searchId != null) {
            service.getById(searchId).ifPresent(list::add);
        } else {
            list = service.getAll();
        }
        model.addAttribute("books", list);
        return "book-list";
    }

    @GetMapping("/editBook/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        service.getById(id).ifPresent(b -> {
            model.addAttribute("book", b);
            model.addAttribute("isEdit", true);
        });
        return "book-form";
    }

    @GetMapping("/deleteBook/{id}")
    public String delete(@PathVariable("id") int id) {
        service.delete(id);
        return "redirect:/books";
    }
}