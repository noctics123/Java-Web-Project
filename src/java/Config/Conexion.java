/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Noctics
 */

public class Conexion {
    Connection con;
    String url="jdbc:mysql://localhost:3306/base_dwb";
    String user="root";
    String pass="";
   public Connection Conexion(){
 
       try{
        //CARGAR EL DRIVER
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        //CREA OBJETO CONEXIÓN
       con=DriverManager.getConnection(url,user,pass);
        } catch(Exception e){
        
        }
      return con; 
    
    }
}
