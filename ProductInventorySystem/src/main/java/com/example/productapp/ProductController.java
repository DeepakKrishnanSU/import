package com.example.productapp;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ProductController {
    private final ProductService service;

    public ProductController(ProductService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("isEdit", false);
        return "product-form";
    }

    @PostMapping("/saveProduct")
    public String save(@ModelAttribute Product prod) {
        service.save(prod);
        return "redirect:/products";
    }

    @GetMapping("/products")
    public String list(@RequestParam(value = "searchId", required = false) Integer searchId, Model model) {
        List<Product> list = new ArrayList<>();
        if (searchId != null) {
            service.getById(searchId).ifPresent(list::add);
        } else {
            list = service.getAll();
        }
        model.addAttribute("products", list);
        return "product-list";
    }

    @GetMapping("/editProduct/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        service.getById(id).ifPresent(p -> {
            model.addAttribute("product", p);
            model.addAttribute("isEdit", true);
        });
        return "product-form";
    }

    @GetMapping("/deleteProduct/{id}")
    public String delete(@PathVariable("id") int id) {
        service.delete(id);
        return "redirect:/products";
    }
}