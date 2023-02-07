import { LightningElement } from 'lwc';
import { getRecord,getFeildValue } from 'lightning/uiRecordApi';
import NAME_FEILD from '@salesforce/schema/student_rating__c.Name';
import Rating__c_FEILD from '@salesforce/schema/student_rating__c.Rating__c';
export default class Wireex extends LightningElement {
    @apirecordId;
    @wire(getRecord,{recordId:'$recordId',feilds:[NAME_FEILD,Rating__c_FEILD]})
    record;
    get name(){ 
        return this.record.data ? getFeildValue(this.record.data,NAME_FEILD):'';
    }
    get name(){ 
        return this.record.data ? getFeildValue(this.record.data,Rating__c_FEILD):'';
    }
}