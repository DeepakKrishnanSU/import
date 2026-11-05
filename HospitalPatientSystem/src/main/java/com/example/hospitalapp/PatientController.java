package com.example.hospitalapp;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class PatientController {
    private final PatientService service;

    public PatientController(PatientService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("patient", new Patient());
        model.addAttribute("isEdit", false);
        return "patient-form";
    }

    @PostMapping("/savePatient")
    public String save(@ModelAttribute Patient patient) {
        service.save(patient);
        return "redirect:/patients";
    }

    @GetMapping("/patients")
    public String list(@RequestParam(value = "searchId", required = false) Integer searchId, Model model) {
        List<Patient> list = new ArrayList<>();
        if (searchId != null) {
            Optional<Patient> opt = service.getById(searchId);
            opt.ifPresent(list::add);
        } else {
            list = service.getAll();
        }
        model.addAttribute("patients", list);
        return "patient-list";
    }

    @GetMapping("/editPatient/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        service.getById(id).ifPresent(p -> {
            model.addAttribute("patient", p);
            model.addAttribute("isEdit", true);
        });
        return "patient-form";
    }

    @GetMapping("/deletePatient/{id}")
    public String delete(@PathVariable("id") int id) {
        service.delete(id);
        return "redirect:/patients";
    }
}