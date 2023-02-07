import { LightningElement } from 'lwc';
export default class ChildComponent extends LightningElement {
    handleEvent(){
        const myCustomEvent = new customEvent('simple');
        this.dispatchEvent(myCustomEvent);
    }
}