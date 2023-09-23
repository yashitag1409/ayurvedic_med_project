package utils;

public class EmailTemplate {
    public static String getSignupSuccessCode(String name,String otp){
        String message = "<h2>Hello " + name + "</h2>" + 
                        "<h3> Thankyou for Registraing </h3>" + 
                        "<b><p style='font-size: 18px;'> Your OTP is : "+
                        otp  + " </p></b>";

        return message;
                    
    }
    public static String sendThanks(String name){
        String message = "Thank you" + name + "for Registering.";

        return message;
    }
}
