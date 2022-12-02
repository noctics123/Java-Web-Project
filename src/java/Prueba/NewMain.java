/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Prueba;

import Config.Conexion;
import DAO.UsuarioDAO;
import Modelo.Empleado;

/**
 *
 * @author Noctics
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Conexion cn = new Conexion();
   
        System.out.print(cn.Conexion());
    }
    
}
