package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SignupManager {
    String url = "jdbc:mysql://localhost:3306/online_bmi";
    String user = "root";
    String pass = "Amma@2005";
    
    Connection con = null;
    PreparedStatement ps = null;
    
    public String saveData(SignupInterface s) throws Exception {
        con = DriverManager.getConnection(url, user, pass);
        ps = con.prepareStatement("INSERT INTO signup VALUES (?, ?, ?)");
        ps.setString(1, s.getName());
        ps.setString(2, s.getUsername());
        ps.setString(3, s.getPassword());
        
        ps.execute();
        con.close();
        return "Ok thank you";
    }
    
    public List<SignupInterface> readData() {
        List<SignupInterface> L = new ArrayList<SignupInterface>();
        try {
            con = DriverManager.getConnection(url, user, pass);
            ps = con.prepareStatement("SELECT * FROM login");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SignupInterface s = new SignupInterface();
                s.setName(rs.getString(1));
                s.setUsername(rs.getString(2));
                s.setPassword(rs.getString(3));
                L.add(s);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return L;
    }
}
