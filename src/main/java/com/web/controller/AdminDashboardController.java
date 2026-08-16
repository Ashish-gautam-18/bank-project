package com.web.controller;

import com.web.bank.Bank;
import com.web.repo.BankRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminDashboardController {

    @Autowired
    private BankRepo bankRepo;

    // Admin dashboard layout base route
    @GetMapping("/admin-dashboard")
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
                // Invalid numeric structures handled cleanly
            }
        } else {
            bankRepo.findAll().forEach(accountsList::add);
        }

        double totalVaultLiquidity = accountsList.stream().mapToDouble(Bank::getAmount).sum();

        model.addAttribute("accounts", accountsList);
        model.addAttribute("totalAccounts", accountsList.size());
        model.addAttribute("totalVault", totalVaultLiquidity);
        model.addAttribute("searchQuery", search);

        return "AdminDashboard"; 
    }

    @GetMapping("/client-home")
    public String showClientHomePage() {
        return "Home"; 
    }

    // Handled right-side navbar query action from Home.jsp smoothly
    @GetMapping("/findAccount")
    public String findAccountFromHome(@RequestParam("search_acc_number") String searchAccNumber) {
        return "redirect:/admin-dashboard?search=" + searchAccNumber;
    }

    @PostMapping("/admin/depo")
    public String handleDashboardDeposit(@RequestParam("accNum") long accNum, @RequestParam("amount") double depositAmount, RedirectAttributes redirectAttributes) {
        try {
            Bank bankAccount = bankRepo.findByAccountNumber(accNum);
            if (bankAccount == null) {
                redirectAttributes.addFlashAttribute("adminMsg", "Deposit failed: Account " + accNum + " not found.");
            } else if (depositAmount <= 0) {
                redirectAttributes.addFlashAttribute("adminMsg", "Deposit failed: Amount must be greater than zero.");
            } else {
                bankAccount.setAmount(bankAccount.getAmount() + depositAmount);
                bankRepo.save(bankAccount);
                redirectAttributes.addFlashAttribute("adminMsg", "₹" + depositAmount + " deposited successfully into account " + accNum + ".");
            }
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("adminMsg", "Deposit failed: " + e.getMessage());
        }
        return "redirect:/admin-dashboard"; 
    }

    @PostMapping("/admin/transfer")
    public String handleDashboardTransfer(@RequestParam("fromAcc") long fromAcc, 
                                          @RequestParam("toAcc") long toAcc, 
                                          @RequestParam("amount") double transferAmount,
                                          RedirectAttributes redirectAttributes) {
        try {
            if (fromAcc == toAcc) {
                redirectAttributes.addFlashAttribute("adminMsg", "Transfer failed: Sender and receiver account cannot be same.");
                return "redirect:/admin-dashboard";
            }
            if (transferAmount <= 0) {
                redirectAttributes.addFlashAttribute("adminMsg", "Transfer failed: Amount must be greater than zero.");
                return "redirect:/admin-dashboard";
            }

            Bank sender = bankRepo.findByAccountNumber(fromAcc);
            Bank receiver = bankRepo.findByAccountNumber(toAcc);

            if (sender == null) {
                redirectAttributes.addFlashAttribute("adminMsg", "Transfer failed: Sender account " + fromAcc + " not found.");
            } else if (receiver == null) {
                redirectAttributes.addFlashAttribute("adminMsg", "Transfer failed: Receiver account " + toAcc + " not found.");
            } else if (sender.getAmount() < transferAmount) {
                redirectAttributes.addFlashAttribute("adminMsg", "Transfer failed: Insufficient balance in sender's account.");
            } else {
                sender.setAmount(sender.getAmount() - transferAmount);
                receiver.setAmount(receiver.getAmount() + transferAmount);
                bankRepo.save(sender);
                bankRepo.save(receiver);
                redirectAttributes.addFlashAttribute("adminMsg", "₹" + transferAmount + " transferred successfully from " + fromAcc + " to " + toAcc + ".");
            }
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("adminMsg", "Transfer failed: " + e.getMessage());
        }
        return "redirect:/admin-dashboard"; 
    }

    @PostMapping("/deleteAccount")
    public String deleteAccount(@RequestParam("acc_number") long accNum) {
        try {
            bankRepo.deleteById(accNum);
        } catch (Exception ignored) {}
        
        return "redirect:/admin-dashboard"; 
    }
}