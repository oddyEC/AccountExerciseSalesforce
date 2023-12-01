public with sharing class AccountController {
    @AuraEnabled(cacheable = true)
    public static List<AccountDto> getAllAccounts(){
        try {
            AccountDto acc = new AccountDto();
            acc.numberAccount = 'ACC-001';
            acc.type = Constants.ACCOUNT_TYPES.SAVING.name();
            acc.balanceAccount = 200.50;
            return new List<AccountDto>{acc};
        } catch (Exception e) {
            System.debug(e.getStackTraceString());
            throw new AuraHandledException(e.getLineNumber() + ':' + e.getMessage());
        }
    }
}