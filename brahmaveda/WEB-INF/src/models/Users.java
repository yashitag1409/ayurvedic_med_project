package models;


import org.jasypt.util.password.StrongPasswordEncryptor;

import java.sql.*;
import utils.DBConnection;

public class Users {
    private Integer userId;
    private String name;
    private String email;
    private String password;
    private String contact;
    private String registrationId;
    private String instituteName;
    private String otp;

    private static StrongPasswordEncryptor spe = new StrongPasswordEncryptor();

    public Users(){}

    // Signup constractor
    public Users(String name, String email, String password, String contact, String registrationId,
            String instituteName, String otp) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.contact = contact;
        this.registrationId = registrationId;
        this.instituteName = instituteName;
        this.otp = otp;
    }

    // Login constractor
    public Users(String email, String password) {
        this.email = email;
        this.password = password;
    }
    
    public boolean saveUser(){
        boolean flag = false;
        try{
            Connection con = DBConnection.getConnection();
            String query = "insert into users (name, email,password, contact , registration_no , institute_name) value (?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(query);

            pst.setString(1,name);
            pst.setString(2,email);
            pst.setString(3,spe.encryptPassword(password));
            pst.setString(4,contact);
            pst.setString(5,registrationId);
            pst.setString(6,instituteName);

            int val = pst.executeUpdate();

            if(val == 1){
                flag = true;
            }
        }catch(SQLException sqle){
            sqle.printStackTrace();
        }
        return flag;
    }

    public boolean loginUser(){
        boolean status=false;

        try{

            Connection con = DBConnection.getConnection();
            String query = "Select * from users where email=?";
            PreparedStatement pst = con.prepareStatement(query);

            pst.setString(1,email);
            ResultSet rs = pst.executeQuery();

            if(rs.next()){
                String encreptedPassword = rs.getString("password");
                boolean f1 = spe.checkPassword(password, encreptedPassword);

                if(f1){
                    userId = rs.getInt("user_id");
                    name = rs.getString("name");
                    email = rs.getString("email");
                    contact = rs.getString("contact");
                    registrationId = rs.getString("registration_no");
                    instituteName = rs.getString("institute_name");

                    status = true;
                }
            }

        }catch(SQLException sqle){
            sqle.printStackTrace();
        }

        return status;
    }


    public Integer getUserId() {
        return userId;
    }
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }
    public String getRegistrationId() {
        return registrationId;
    }
    public void setRegistrationId(String registrationId) {
        this.registrationId = registrationId;
    }
    public String getInstituteName() {
        return instituteName;
    }
    public void setInstituteName(String instituteName) {
        this.instituteName = instituteName;
    }
    public String getOtp() {
        return otp;
    }
    public void setOtp(String otp) {
        this.otp = otp;
    }


    


}