public class gridController {
    
    @AuraEnabled
      public static Id saveDataToServer(Decimal P1,Decimal P2,Decimal P3,Decimal P4,Decimal P5,Decimal P6,Decimal P7
                                        ,Decimal P8,Decimal P9,Decimal P10,Decimal P11,Decimal P12,Decimal P13,Decimal 
                                        P14,Decimal P15,Decimal P16,Decimal P17,Decimal P18,Decimal P19,Decimal 
                                        P20,Decimal P21,Decimal P22) {
        // create a new custom object record or update an existing one
        // use the input values to set the fields on the record
        Total_count_of_employee__c customRecord = new Total_count_of_employee__c();
        customRecord.swati_count__c = P1;
        customRecord.sravani_count__c = P2;
        customRecord.Rajitha_count__c =P3;
        customRecord.Rohan_count__c =p4;
        customRecord.Praneeth_count__c =p5;
        customRecord.Anil_count__c =p6;
         customRecord.Shweta_count__c =p7;
         customRecord.Lavanya_count__c =p8;
         customRecord.swamy_count__c =p9;
         customRecord.Nikhilesh_count__c =p10;
         customRecord.Haritha_count__c =p11;
         customRecord.Naresh_count__c =p12;
         customRecord.Bhavani_count__c =p13;
         customRecord.pavani_count__c =p14;
         customRecord.Shikha_count__c =p15;
         customRecord.Sukanya_count__c =p16;
         customRecord.Amrutha_count__c =p17;
         customRecord.Ranjith_count__c =p18;
         customRecord.Snehdeep_count__c =p19;
         customRecord.Tarun_count__c =p20;
         customRecord.Asifa_count__c =p21;
         customRecord.Durga_count__c =p22;                                   
       // customRecord.Name = recordName;
        insert customRecord;
        return customRecord.Id;
    }
}