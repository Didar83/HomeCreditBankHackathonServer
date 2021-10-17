package com.homecredit.wildcredit.controller;

import com.homecredit.wildcredit.service.CreditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/creditme")
public class CreditMe {

    @Autowired
    CreditService creditService;

    @GetMapping("/start")
    public ResponseEntity<String> start(){
        return ResponseEntity.ok("scanPage");
    }

    @PostMapping("/scanPage")
    public ResponseEntity<String> scanPage(@RequestParam String qrCodeToString){
        return ResponseEntity.ok(creditService.sendQrQode(qrCodeToString));
    }

    @PostMapping("/sendPersonalInformation")
    public ResponseEntity<String> sendPersonalInformation(@RequestParam String phoneNumber, @RequestParam Long iin){
        return ResponseEntity.ok(creditService.sendPersonalInformation(phoneNumber, iin));
    }

    @PostMapping("/identify")
    public ResponseEntity<String> identify(@RequestParam String faceID){
        return ResponseEntity.ok(creditService.identify(faceID));
    }

}
