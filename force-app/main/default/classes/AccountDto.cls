public with sharing class AccountDto {
    @AuraEnabled
    public String id {get; set;}
    @AuraEnabled
    public String numberAccount {get; set;}
    @AuraEnabled
    public String type {get; set;}
    @AuraEnabled
    public Decimal balanceAccount {get; set;}
}