package models;

import java.util.*;

import utils.DBConnection;

import java.sql.*;

public class Medicines {

    private Integer medId;
    private String medicineName;
    private String medicineType;
    private String dose;
    private String packSize;
    private String referenceText ;
    private String precaution;
    private String mainIndication;
    private String preferredUse ;


    public Medicines(){}

    

    public Medicines( String medicineName, String medicineType, String dose, String precaution,
            String mainIndication ,String preferredUse) {
        this.medicineName = medicineName;
        this.medicineType = medicineType;
        this.dose = dose;
        this.precaution = precaution;
        this.mainIndication = mainIndication;
        this.preferredUse = preferredUse;

    }



    public Medicines(String medicineType, String mainIndication, String preferredUse) {
        this.medicineType = medicineType;
        this.mainIndication = mainIndication;
        this.preferredUse = preferredUse;
    }

    public Medicines(Integer medId, String medicineName, String medicineType, String dose, String packSize,
            String referenceText, String precaution, String mainIndication, String preferredUse) {
        this.medId = medId;
        this.medicineName = medicineName;
        this.medicineType = medicineType;
        this.dose = dose;
        this.packSize = packSize;
        this.referenceText = referenceText;
        this.precaution = precaution;
        this.mainIndication = mainIndication;
        this.preferredUse = preferredUse;
    }

    public ArrayList<String> searchPrecautions(){
        ArrayList<String> sprec = new ArrayList<String>();

        try {
            Connection con = DBConnection.getConnection();
            
            String query = "Select DISTINCT precautions from medicines";
            
            PreparedStatement pst = con.prepareStatement(query);

            ResultSet rs = pst.executeQuery();

            while(rs.next()){
                sprec.add(rs.getString("precautions"));
            }
            con.close();
            
        } catch (SQLException e) {
            e.printStackTrace();    
        }

        return sprec;
    }

    public ArrayList<Medicines> collectAllMedicines(){
        ArrayList<Medicines> medicineList = new ArrayList<Medicines>();

        try {

            Connection con = DBConnection.getConnection();
            String query = "Select * from medicines where type=? AND main_indications like ? or main_indications like ? or main_indications like ?";
            PreparedStatement pst = con.prepareStatement(query);

            pst.setString(1, medicineType);
            pst.setString(2 , "%" + mainIndication);  
            pst.setString(3 , "%" + mainIndication + "%");
            pst.setString(4 , mainIndication + "%");

            
            ResultSet rs = pst.executeQuery();
            System.out.println(rs);

            while(rs.next()){
                // medId = rs.getInt("med_Id");
                // System.out.println(medId);
                medicineName = rs.getString("medicine_name");
                mainIndication = rs.getString("main_indications");
                dose = rs.getString("dose_size");
                precaution = rs.getString("precautions");
                preferredUse = rs.getString("preferred_use");
                medicineType = rs.getString("type");

                medicineList.add(new Medicines(medicineName, medicineType, dose, precaution, mainIndication, preferredUse));
            }
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return medicineList;
    }

    public Integer getMedId() {
        return medId;
    }
    public void setMedId(Integer medId) {
        this.medId = medId;
    }
    public String getMedicineName() {
        return medicineName;
    }
    public void setMedicineName(String medicineName) {
        this.medicineName = medicineName;
    }
    public String getMedicineType() {
        return medicineType;
    }
    public void setMedicineType(String medicineType) {
        this.medicineType = medicineType;
    }
    public String getDose() {
        return dose;
    }
    public void setDose(String dose) {
        this.dose = dose;
    }
    public String getPackSize() {
        return packSize;
    }
    public void setPackSize(String packSize) {
        this.packSize = packSize;
    }
    public String getReferenceText() {
        return referenceText;
    }
    public void setReferenceText(String referenceText) {
        this.referenceText = referenceText;
    }
    public String getPrecaution() {
        return precaution;
    }
    public void setPrecaution(String precaution) {
        this.precaution = precaution;
    }
    public String getMainIndication() {
        return mainIndication;
    }
    public void setMainIndication(String mainIndication) {
        this.mainIndication = mainIndication;
    }
    public String getPreferredUse() {
        return preferredUse;
    }
    public void setPreferredUse(String preferredUse) {
        this.preferredUse = preferredUse;
    }

    

    
}
