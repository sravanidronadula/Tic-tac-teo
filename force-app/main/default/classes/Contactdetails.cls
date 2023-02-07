@RestResource(urlMapping='/Contactdetails/*')
global class Contactdetails {
   @Httpget
    global static Contact getContact(){
        RestRequest req =RestContext.request;
        RestResponse res =RestContext.response;
        res.addHeader('Content-Type','application/json');
        String email;
        if(req.params.get('email')!=null){
        email =req.params.get('email');
        }
        Contact[] result = [Select firstName,lastName from Contact WHERE Email ='rrr@zz3412.com'];
       
        return result[0];
    }
}
  /* Contact[] conObj =[Select ID,firstname,lastname from Contact];
        return conObj[2];
    }
}*/