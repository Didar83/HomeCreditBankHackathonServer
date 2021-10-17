package com.homecredit.wildcredit.service;

import org.springframework.stereotype.Service;

@Service
public class BankService {

    //This is example of Bank API of scoring system
    public Integer calculateRate(Long iin) {
        return 100;
    }

    //This is example of Bank API of security system
    public String getStatusOfPerson(String phoneNumber, Long iin) {
        return "APPROVED";
    }

    //This is example of Bank API of identification system
    public String getStatusOfIdentification(String faceID) {
        return "SIGNED";
    }

    public String sendMoneyToSeller(String bin, Double parsePrice) {
        // transfer money to Seller
        return ", money transfer completed";
    }
}
