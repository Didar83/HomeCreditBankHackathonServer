package com.homecredit.wildcredit.service;

import com.homecredit.wildcredit.model.SmartContractEthereum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CreditService {
    @Autowired
    private BankService bankService;
    @Autowired
    private SellerService sellerService;
    private Integer clientScoreRate;
    private String bin;
    private Double parsePrice;
    private SmartContractEthereum smartContractEthereum;
    private String phone;

    public String sendQrQode(String qrCodeToString) {
        parsePrice = Double.parseDouble(qrCodeToString.substring(11, 15));
        bin = qrCodeToString.substring(0, 12);
        // inform HomeCredit this information
        return "identify";
    }

    public String sendPersonalInformation(String phoneNumber, Long iin) {
        phone = phoneNumber;
        clientScoreRate = bankService.calculateRate(iin);
        String status = bankService.getStatusOfPerson(phoneNumber, iin);
        return status;
    }

    public String identify(String faceID){
        String status = bankService.getStatusOfIdentification(faceID);
        if(status.equals("SIGNED")){
            if (smartContract(clientScoreRate, parsePrice)){
                status += bankService.sendMoneyToSeller(bin, parsePrice);
                sellerService.sendCheckOnline(phone);
            };
        }
        return status;
    }

    private boolean smartContract(Integer scoreRate, Double price){
        // here will be Ethereum smart contract
        smartContractEthereum.setScoreRateLimit(90);
        smartContractEthereum.setPriceLimit(100000.00);
        if(scoreRate < smartContractEthereum.getPriceLimit() && price < smartContractEthereum.getPriceLimit()){
            return true;
        } else {
            return false;
        }
    }

}
