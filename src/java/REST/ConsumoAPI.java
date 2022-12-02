/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package REST;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

/**
 *
 * @author Noctics
 */
public class ConsumoAPI {
    
    public static void main(String[] args){
        try{
            
            URL url = new URL("http://localhost:8080/Proyecto_DWI_1/index.jsp");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.connect();

            int responseCode = conn.getResponseCode();
            if(responseCode != 200){
                throw new RuntimeException("Ocurrio un error: "+responseCode);
            }else{
                StringBuilder informationString = new StringBuilder();
                Scanner scanner = new Scanner(url.openStream());  
                
                while(scanner.hasNext()){
                    informationString.append(scanner.nextLine());
                }
                scanner.close();
            }
            
        } catch(Exception e){
            e.printStackTrace();
        }
    }
}
