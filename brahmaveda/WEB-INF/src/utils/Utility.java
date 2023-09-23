package utils;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

public class Utility {
    
    public static Random random = new Random();

    

    public static String generateOTP(){
        int val = 999999 -random.nextInt(900000);

        return Integer.toString(val);
    }
    
    public static InputStream sendRequest(String url , String method){
        InputStream is = null;

        try{
            URL reqUrl = new URL(url);
            HttpURLConnection con = (HttpURLConnection)reqUrl.openConnection();

            con.setRequestMethod(method);
            con.setDoOutput(true);

            DataOutputStream os = new DataOutputStream(con.getOutputStream());

            os.flush();
            os.close();

            int respCode = con.getResponseCode();
            if(respCode == HttpURLConnection.HTTP_OK){
                is = con.getInputStream();
            }else{
                is = con.getErrorStream();
            }
        }catch(IOException ioe){
            ioe.printStackTrace();
        }

        return is;

    }

}
