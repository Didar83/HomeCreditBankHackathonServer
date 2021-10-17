package com.homecredit.wildcredit.model;

import lombok.Data;

import java.util.List;

@Data
public class SmartContractEthereum {
    private Integer scoreRateLimit;
    private Double priceLimit;
    private String ethereumToken;

    //TODO integration with Ethereum module
}
