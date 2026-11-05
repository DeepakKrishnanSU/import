package com.example.bankingapp;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;

@Service
public class BankAccountService {
    private final BankAccountRepository repo;

    public BankAccountService(BankAccountRepository repo) {
        this.repo = repo;
    }

    public void saveAccount(BankAccount acc) { repo.save(acc); }
    public List<BankAccount> getAll() { return repo.findAll(); }
    public Optional<BankAccount> getById(int id) { return repo.findById(id); }
    public Optional<BankAccount> getByAccNumber(String accNum) { return repo.findByAccountNumber(accNum); }
    public void delete(int id) { repo.deleteById(id); }

    // Deposit Logic
    public boolean deposit(String accNum, double amount) {
        if (amount <= 0) return false;
        Optional<BankAccount> opt = repo.findByAccountNumber(accNum);
        if (opt.isPresent()) {
            BankAccount acc = opt.get();
            acc.setAccountBalance(acc.getAccountBalance() + amount);
            repo.save(acc);
            return true;
        }
        return false;
    }

    // Withdraw Logic with Overdraft Prevention
    public boolean withdraw(String accNum, double amount) {
        if (amount <= 0) return false;
        Optional<BankAccount> opt = repo.findByAccountNumber(accNum);
        if (opt.isPresent()) {
            BankAccount acc = opt.get();
            if (acc.getAccountBalance() >= amount) {
                acc.setAccountBalance(acc.getAccountBalance() - amount);
                repo.save(acc);
                return true;
            }
        }
        return false;
    }
}