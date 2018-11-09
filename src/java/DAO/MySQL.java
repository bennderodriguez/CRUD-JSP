/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

/**
 * @copyright (c) 2018, RockJS Framework by Focus On Serivices
 * @version 1.0
 * @requires Progress
 * @author RockJS Framework by Focus On Serivices Developer: Bernabé Gutíerrez
 * Rorguíguez
 * @license http://focusonservices.com/rockjs FOCUS ON SERVICES
 * @throws Windows Server Version
 */
public class MySQL {

    Map<String, String> map = new HashMap<String, String>();

    public Map<String, String> getMap() {
        return this.map;
    }

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Where is your MySQL JDBC Driver?");
            e.printStackTrace();
            return (Connection) e;
        }

        System.out.println("MySQL JDBC Driver Registered!");
        Connection connection = null;

        try {
            connection = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/request", "root", "zebralimon10");

        } catch (SQLException e) {
            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
            return (Connection) e;
        }
        return connection;
    }

    public ResultSet prueba() throws SQLException {
        Connection con = getConnection();
        ResultSet rs = null;
        try {
            Statement st = con.createStatement();
            rs = st.executeQuery("Select * from client");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }

    public ResultSet getUSer(int id) throws SQLException {
        Connection con = getConnection();
        ResultSet rs = null;
        try {
            Statement st = con.createStatement();
            rs = st.executeQuery("Select * from client where id = " + id);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return rs;
    }

    public void getUsers() throws SQLException {
        Connection con = getConnection();

        try {

            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("Select * from client");

            while (rs.next()) {
                //int id = rs.getInt("id");
                String id = rs.getString("id");
                String First_Name = rs.getString("First_Name");
                String Last_Name = rs.getString("Last_Name");
                String title = rs.getString("Title");

                System.out.println("id : " + id);
                System.out.println("First_Name : " + First_Name);
                System.out.println("Last_Name : " + Last_Name);
                System.out.println("title : " + title);

            }

        } catch (SQLException e) {

            System.out.println(e.getMessage());

        } finally {
            if (con != null) {
                con.close();
            }

        }

    }

    public void createUSer(String First_Name, String Last_Name, String title) throws SQLException {
        Connection con = getConnection();
        try {
            String SQLQuery = "INSERT INTO client (id, First_Name, Last_Name, Title) VALUES (NULL, '" + First_Name + "', '" + Last_Name + "', '" + title + "');";
            Statement st = con.createStatement();
            st.executeUpdate(SQLQuery);
            System.out.println("Success");
        } catch (SQLException e) {
            System.out.println("Error");
            System.out.println(e);
        }
    }

    public void updateClient(int id, String First_Name) {
        Connection con = getConnection();
        try {
            String SQLQuery = "UPDATE client SET First_Name = '" + First_Name + "' WHERE id = '" + id + "' ; ";
            Statement st = con.createStatement();
            st.executeUpdate(SQLQuery);
            System.out.println("Success");
        } catch (SQLException e) {
            System.out.println("Error");
            System.out.println(e);
        }
    }

    public void deleteClient(int id) {
        Connection con = getConnection();
        try {
            String SQLQuery = "DELETE FROM client WHERE id = '" + id + "' ; ";
            Statement st = con.createStatement();
            st.executeUpdate(SQLQuery);
            System.out.println("Success");
        } catch (SQLException e) {
            System.out.println("Error");
            System.out.println(e);
        }
    }

}
