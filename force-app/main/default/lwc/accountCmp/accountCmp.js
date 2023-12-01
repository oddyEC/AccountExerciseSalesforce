import { LightningElement, wire } from 'lwc';
import getAllAccounts from '@salesforce/apex/AccountController.getAllAccounts';

const columns = [
    { label: 'Id', fieldName: 'id' },
    { label: 'Nro. Cuenta', fieldName: 'numberAccount' },
    { label: 'Tipo', fieldName: 'type' },
    { label: 'Saldo', fieldName: 'balanceAccount', type: 'currency' },
];

export default class AccountCmp extends LightningElement {
    accounts;
    @wire(getAllAccounts)
    getAccounts({error, data}){
        if (data) {
            this.accounts = [...data]
            console.log(JSON.stringify(this.accounts));
        }else if (error) {
            console.error(JSON.stringify(error));
        }
    }
}