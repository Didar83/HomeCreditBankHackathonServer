package com.homecredit.wildcredit.controller;

import com.homecredit.wildcredit.service.SellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/seller")
public class SellerController {
    @Autowired
    private SellerService sellerService;

    @RequestMapping("/sendPaymentInfo")
    public ResponseEntity<String> sendPaymentInfo(@RequestParam String paymentInfo){
        return ResponseEntity.ok(sellerService.sendPaymentInfo(paymentInfo));
    }

    @RequestMapping("/sendProductInfo")
    public ResponseEntity<String> sendProductInfo(@RequestParam String productName, @RequestParam Double price){
        return ResponseEntity.ok(sellerService.sendRoductInfo(productName, price));
    }
}
