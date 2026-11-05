package com.example.donorapp;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class BloodDonorController {
    private final BloodDonorService service;

    public BloodDonorController(BloodDonorService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("donor", new BloodDonor());
        model.addAttribute("isEdit", false);
        return "donor-form";
    }

    @PostMapping("/saveDonor")
    public String save(@ModelAttribute BloodDonor donor) {
        service.saveDonor(donor);
        return "redirect:/donors";
    }

    @GetMapping("/donors")
    public String list(@RequestParam(value = "searchGroup", required = false) String searchGroup, Model model) {
        List<BloodDonor> list;
        if (searchGroup != null && !searchGroup.trim().isEmpty()) {
            list = service.searchByBloodGroup(searchGroup.trim());
        } else {
            list = service.getAll();
        }
        model.addAttribute("donors", list);
        return "donor-list";
    }

    @GetMapping("/editDonor/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        service.getById(id).ifPresent(d -> {
            model.addAttribute("donor", d);
            model.addAttribute("isEdit", true);
        });
        return "donor-form";
    }

    @GetMapping("/deleteDonor/{id}")
    public String delete(@PathVariable("id") int id) {
        service.delete(id);
        return "redirect:/donors";
    }
}