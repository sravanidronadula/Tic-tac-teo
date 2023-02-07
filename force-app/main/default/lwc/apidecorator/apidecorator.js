import { LightningElement,api } from 'lwc';

export default class Apidecorator extends LightningElement {
    message ='public property';
    @api recordId;
}