package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.LoginInterface;
import com.model.LoginManager;

public class CustomerServices extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        LoginManager sm = new LoginManager();
        List<LoginInterface> L = sm.readData();
        req.setAttribute("List", L);
        RequestDispatcher rd = req.getRequestDispatcher("viewdata.jsp");
        rd.forward(req, res);
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    }
}
