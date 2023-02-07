@RestResource(urlMapping='/Condetails/*')
global class Casedetails {
   @Httpget
    global static List<Contact> getCustomer(){
        RestRequest req =RestContext.request;
        RestResponse res =RestContext.response;
        res.addHeader('Content-Type','application/json');
        String email;
        if(req.params.get('email')!=null){
        email =req.params.get('email');
        }
        Contact[] conResult = [Select Name,(SELECT Id,contactId,Casenumber from cases) from Contact WHERE Contact.Email ='rrr@zz3412.com'];
        return conResult;
    }
}