/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Interface.IReclamos;
import Modelo.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author utente
 */
public class ReclamosDAO implements IReclamos{
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public void Registrar(String Nombre, String Apellido, String documento, String domicilio, String email, String telefono, String descripcion) {
        String sql = "call In_Reclamo(?,?,?,?,?,?,?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, Nombre);
            ps.setString(2, Apellido);
            ps.setString(3, documento);
            ps.setString(4, domicilio);
            ps.setString(5, email);
            ps.setString(6, telefono);
            ps.setString(7, descripcion);
            rs=ps.executeQuery();
        } catch(Exception e){ 
        }
    }
    
    @Override
    public List<Reclamo> Listar(){
        List<Reclamo> lista=new ArrayList();
        String sql="SELECT * from Reclamos";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Reclamo n=new Reclamo();
                n.setId(rs.getString(1));
                n.setNombre(rs.getString(2));
                n.setApellido(rs.getString(3));
                n.setDocumento(rs.getString(4));
                n.setDomicilio(rs.getString(5));
                n.setEmail(rs.getString(6));
                n.setTelefono(rs.getString(7));
                n.setDescripcion(rs.getString(8));
                lista.add(n);
            }
        } catch(Exception e){ 
        }
        return lista;
    }
}
