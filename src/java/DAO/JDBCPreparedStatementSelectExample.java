/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 * @copyright (c) 2018, RockJS Framework by Focus On Serivices
 * @version 1.0
 * @requires Progress
 * @author RockJS Framework by Focus On Serivices Developer: Bernabé Gutíerrez
 * Rorguíguez
 * @license http://focusonservices.com/rockjs FOCUS ON SERVICES
 * @throws Windows Server Version
 */
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCPreparedStatementSelectExample {

    public static void main(String[] args) throws SQLException {
        MySQL sql = new MySQL();
        
        ResultSet rs = sql.prueba();
        
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
        
//       sql.getUsers();
//       sql.updateClient(1195, "Luffy");
//       sql.deleteClient(1195);
//       sql.createUSer("Coffe","Late","GNDE");
       
      
    }

}
