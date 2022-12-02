/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Modelo.Destino;
import Interface.IDestino;

public class DestinosDAO implements IDestino{
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public void Registrar(String destino, String fecha, double costo, String imagen, String categoria) {
        String sql = "call In_Destino(?,?,?,?,?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, destino);
            ps.setDouble(2, costo);
            ps.setString(3, fecha);
            ps.setString(4, imagen);
            ps.setString(5, categoria);
            rs=ps.executeQuery();
            System.out.println("la frase es "+ps);
        } catch(Exception e){ 
            e.printStackTrace();
        }
    }
    
    @Override
    public void Eliminar(String id) {
        String sql = "call Del_Destino(?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
        } catch(Exception e){ 
        }
    }
    
    @Override
    public void Modificar(String id, String destino, String fecha, double costo, String imagen, String categoria) {
        String sql = "call Mod_Destino(?,?,?,?,?,?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, destino);
            ps.setDouble(3, costo);
            ps.setString(4, fecha);
            ps.setString(5, imagen);
            ps.setString(6, categoria);
            rs=ps.executeQuery();
        } catch(Exception e){ 
        }
    }
     
    @Override
    public List<Destino> Listar(){
        List<Destino> lista=new ArrayList();
        String sql="SELECT * from Destino";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Destino n=new Destino();
                n.setId(rs.getString(1));
                n.setDestino(rs.getString(2));
                n.setCosto(rs.getDouble(3));
                n.setFecha(rs.getString(4));
                n.setImagen(rs.getString(5));
                n.setCategoria(rs.getString(6));
                lista.add(n);
            }
        } catch(Exception e){ 
        }
        return lista;
    }
    
    public Destino Buscar(String id){
        Destino d= null;
        String sql="SELECT * from Destino where idDestino like ?";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
            while(rs.next()){
                d = new Destino();
                d.setId(rs.getString(1));
                d.setDestino(rs.getString(2));
                d.setCosto(rs.getDouble(3));
                d.setFecha(rs.getString(4));
                d.setImagen(rs.getString(5));
                d.setCategoria(rs.getString(6));
            }
        } catch(Exception e){ 
        }
        return d;
    }
}
