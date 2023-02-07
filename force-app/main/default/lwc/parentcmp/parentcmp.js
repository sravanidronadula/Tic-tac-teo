import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {
   myCustomEvent(){
    alert('this is a custom event');
   }
}