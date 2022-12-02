/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Config.Conexion;
import Modelo.Informe;
import Interface.IInforme;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author utente
 */
public class InformesDAO implements IInforme{
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public void Registrar(String Nombre, String Apellido, String correo, String telefono, String mensaje) {
        String sql = "call In_Informe(?,?,?,?,?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, Nombre);
            ps.setString(2, Apellido);
            ps.setString(3, correo);
            ps.setString(4, telefono);
            ps.setString(5, mensaje);
            rs=ps.executeQuery();
        } catch(Exception e){ 
        }
    }
    
    @Override
    public List<Informe> Listar(){
        List<Informe> lista=new ArrayList();
        String sql="SELECT * from Informe";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Informe n=new Informe();
                n.setId(rs.getString(1));
                n.setNombre(rs.getString(2));
                n.setApellido(rs.getString(3));
                n.setCorreo(rs.getString(4));
                n.setTelefono(rs.getString(5));
                n.setMensaje(rs.getString(6));
                lista.add(n);
            }
        } catch(Exception e){ 
        }
        return lista;
    }
}
