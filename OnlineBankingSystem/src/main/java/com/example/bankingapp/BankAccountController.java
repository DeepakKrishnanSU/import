package com.example.bankingapp;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class BankAccountController {
    private final BankAccountService service;

    public BankAccountController(BankAccountService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("account", new BankAccount());
        model.addAttribute("isEdit", false);
        return "account-form";
    }

    @PostMapping("/saveAccount")
    public String save(@ModelAttribute BankAccount acc) {
        service.saveAccount(acc);
        return "redirect:/accounts";
    }

    @GetMapping("/accounts")
    public String list(@RequestParam(value = "searchAcc", required = false) String searchAcc, Model model) {
        List<BankAccount> list = new ArrayList<>();
        if (searchAcc != null && !searchAcc.trim().isEmpty()) {
            service.getByAccNumber(searchAcc.trim()).ifPresent(list::add);
        } else {
            list = service.getAll();
        }
        model.addAttribute("accounts", list);
        return "account-list";
    }

    @PostMapping("/deposit")
    public String deposit(@RequestParam("accountNumber") String accNum, @RequestParam("amount") double amount, Model model) {
        boolean ok = service.deposit(accNum, amount);
        if (!ok) model.addAttribute("msg", "Deposit Failed! Invalid account or amount.");
        return "redirect:/accounts";
    }

    @PostMapping("/withdraw")
    public String withdraw(@RequestParam("accountNumber") String accNum, @RequestParam("amount") double amount, Model model) {
        boolean ok = service.withdraw(accNum, amount);
        if (!ok) model.addAttribute("msg", "Withdrawal Failed! Insufficient balance or invalid account.");
        return "redirect:/accounts";
    }

    @GetMapping("/editAccount/{id}")
    public String edit(@PathVariable("id") int id, Model model) {
        service.getById(id).ifPresent(a -> {
            model.addAttribute("account", a);
            model.addAttribute("isEdit", true);
        });
        return "account-form";
    }

    @GetMapping("/deleteAccount/{id}")
    public String delete(@PathVariable("id") int id) {
        service.delete(id);
        return "redirect:/accounts";
    }
}