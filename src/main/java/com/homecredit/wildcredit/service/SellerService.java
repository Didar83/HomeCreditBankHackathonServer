package com.homecredit.wildcredit.service;

import com.homecredit.wildcredit.repository.SellerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SellerService {
    @Autowired
    private SellerRepository sellerRepository;

    public void sendCheckOnline(String phone) {
        // TODO integration with API 1C to send a bill online
    }

    public String sendPaymentInfo(String paymentInfo) {
        return sellerRepository.save(paymentInfo);
    }

    public String sendRoductInfo(String productName, Double price) {
        // TODO QR-code generator
        return "QR-code";
    }
}
