package com.web.controller;

import com.web.bank.Bank;
import com.web.repo.BankRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminDashboardController {

    @Autowired
    private BankRepo bankRepo;

    // 1. MODIFIED: Ab project run karte hi sabse pahle Admin Page hi khulega (URL: /)
    @GetMapping("/")
    public String showDashboard(@RequestParam(value = "search", required = false) String search, Model model) {
        List<Bank> accountsList = new ArrayList<>();

        if (search != null && !search.trim().isEmpty()) {
            try {
                long accNum = Long.parseLong(search.trim());
                Bank singleAccount = bankRepo.findByAccountNumber(accNum);
                if (singleAccount != null) {
                    accountsList.add(singleAccount);
                }
            } catch (NumberFormatException e) {
                // Invalid numeric characters ko bypass karne ke liye
            }
        } else {
            bankRepo.findAll().forEach(accountsList::add);
        }

        double totalVaultLiquidity = accountsList.stream().mapToDouble(Bank::getAmount).sum();

        model.addAttribute("accounts", accountsList);
        model.addAttribute("totalAccounts", accountsList.size());
        model.addAttribute("totalVault", totalVaultLiquidity);
        model.addAttribute("searchQuery", search);

        return "AdminDashboard"; // /views/AdminDashboard.jsp load hoga
    }

    // 2. NEW: Client Home Page par jaane ke liye ek alag URL link (/client-home)
    @GetMapping("/client-home")
    public String showClientHomePage() {
        return "Home"; // Aapka dynamic animated Home.jsp page load hoga
    }

    // 3. MODIFIED: Search box functionality ko naye dashboard route ke mutabik update kiya
    @GetMapping("/findAccount")
    public String findAccountFromHome(@RequestParam("search_acc_number") String searchAccNumber) {
        return "redirect:/?search=" + searchAccNumber;
    }

    @PostMapping("/admin/depo")
    public String handleDashboardDeposit(@RequestParam("accNum") long accNum, @RequestParam("amount") double depositAmount) {
        try {
            Bank bankAccount = bankRepo.findByAccountNumber(accNum);
            if (bankAccount != null && depositAmount > 0) {
                bankAccount.setAmount(bankAccount.getAmount() + depositAmount);
                bankRepo.save(bankAccount);
            }
        } catch (Exception ignored) {}
        return "redirect:/"; // Post action ke baad main root (Admin page) pr redirect hoga
    }

    @PostMapping("/admin/transfer")
    public String handleDashboardTransfer(@RequestParam("fromAcc") long fromAcc, 
                                          @RequestParam("toAcc") long toAcc, 
                                          @RequestParam("amount") double transferAmount) {
        try {
            if (fromAcc != toAcc && transferAmount > 0) {
                Bank sender = bankRepo.findByAccountNumber(fromAcc);
                Bank receiver = bankRepo.findByAccountNumber(toAcc);

                if (sender != null && receiver != null && sender.getAmount() >= transferAmount) {
                    sender.setAmount(sender.getAmount() - transferAmount);
                    receiver.setAmount(receiver.getAmount() + transferAmount);
                    
                    bankRepo.save(sender);
                    bankRepo.save(receiver);
                }
            }
        } catch (Exception ignored) {}
        return "redirect:/";
    }
}
