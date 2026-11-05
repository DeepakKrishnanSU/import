package com.example.pharmacyapp;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MedicineController {
    private final MedicineService service;

    public MedicineController(MedicineService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("medicine", new Medicine());
        model.addAttribute("isEdit", false);
        return "medicine-form";
    }

    @PostMapping("/saveMedicine")
    public String save(@ModelAttribute Medicine medicine) {
        service.saveMedicine(medicine);
        return "redirect:/medicines";
    }

    @GetMapping("/medicines")
    public String list(@RequestParam(value = "keyword", required = false) String keyword, Model model) {
        List<Medicine> list;
        if (keyword != null && !keyword.trim().isEmpty()) {
            list = service.searchByName(keyword.trim());
        } else {
            list = service.getAll();
        }
        model.addAttribute("medicines", list);
        return "medicine-list";
    }

    @GetMapping("/editMedicine/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        service.getById(id).ifPresent(m -> {
            model.addAttribute("medicine", m);
            model.addAttribute("isEdit", true);
        });
        return "medicine-form";
    }

    @GetMapping("/deleteMedicine/{id}")
    public String delete(@PathVariable("id") int id) {
        service.delete(id);
        return "redirect:/medicines";
    }
}