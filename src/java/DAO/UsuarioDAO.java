/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Config.Conexion;
import Interface.IUsuario;
import Modelo.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Ruben
 */
public class UsuarioDAO implements IUsuario{
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public Usuario validar(String correo, String pass) {
        Usuario us= new Usuario();
        String sql = "select * from usuario where Correo=? and Password=?";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while(rs.next()){
                us.setId(rs.getInt("ID"));
                us.setNom(rs.getString("Nombre"));
                us.setApe(rs.getString("Apellido"));
                us.setCorreo(rs.getString("Correo"));
                us.setContraseña("Password");
            }
        } catch(Exception e){
            
        }
        return us;
    }

    @Override
    public void Registrar(String Nombre, String Apellido, String correo, String contraseña) {
        String sql = "call In_Usuario(?,?,?,?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, Nombre);
            ps.setString(2, Apellido);
            ps.setString(3, correo);
            ps.setString(4, contraseña);
            rs=ps.executeQuery();
             while(rs.next()){
             System.out.println(Nombre);
             }
        } catch(Exception e){
            
        }
    }

    @Override
    public Usuario BuscarUsuario(String correo) {
        Usuario us= new Usuario();
        String sql = "select * from usuario where Correo=?";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, correo);
            rs=ps.executeQuery();
            while(rs.next()){
                us.setId(rs.getInt("ID"));
                us.setNom(rs.getString("Nombre"));
                us.setApe(rs.getString("Apellido"));
                us.setCorreo(rs.getString("Correo"));
                us.setContraseña("Password");
            }
        } catch(Exception e){
            
        }
        return us;
    }
}
