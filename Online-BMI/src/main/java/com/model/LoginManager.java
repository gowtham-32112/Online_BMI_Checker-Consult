package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LoginManager {
    String url = "jdbc:mysql://localhost:3306/online_bmi/login";
    String user = "root";
    String pass = "Amma@2005";
    
    Connection con = null;
    PreparedStatement ps = null;
    
    public String saveData(LoginInterface s) throws Exception {
        con = DriverManager.getConnection(url, user, pass);
        ps = con.prepareStatement("insert into login values(?,?)");
        ps.setString(1, s.getUsername());
        ps.setString(2, s.getPassword());
        
        ps.execute();
        con.close();
        return "Ok thank you";
    }
    
    public List<LoginInterface> readData() {
        List<LoginInterface> L = new ArrayList<LoginInterface>();
        try {
            con = DriverManager.getConnection(url, user, pass);
            ps = con.prepareStatement("select * from login");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                LoginInterface s = new LoginInterface();
                s.setUsername(rs.getString(1));
                s.setPassword(rs.getString(2));
                L.add(s);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return L;
    }
}
