/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Config.Conexion;
import Modelo.Empleado;
import Interface.IEmpleado;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author utente
 */
public class EmpleadoDAO implements IEmpleado{
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public void Registrar(String nombre, String apellido, String dni, String tel, String usuario, String passw) {
        String sql = "call In_Empleado(?,?,?,?,?,?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, nombre);
            ps.setString(2, apellido);
            ps.setString(3, dni);
            ps.setString(4, tel);
            ps.setString(5, usuario);
            ps.setString(6, passw);
            rs=ps.executeQuery();
        } catch(Exception e){ 
            e.printStackTrace();
        }
    }
    
    @Override
    public void Eliminar(String id) {
        String sql = "call Del_Empleado(?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
        } catch(Exception e){ 
        }
    }
    
    @Override
    public void Modificar(String id, String nombre, String apellido, String dni, String tel, String usuario, String passw) {
        String sql = "call Mod_Empleado(?,?,?,?,?,?,?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, nombre);
            ps.setString(3, apellido);
            ps.setString(4, dni);
            ps.setString(5, tel);
            ps.setString(6, usuario);
            ps.setString(7, passw);
            rs=ps.executeQuery();
        } catch(Exception e){ 
        }
    }
     
    @Override
    public List<Empleado> Listar(){
        List<Empleado> lista=new ArrayList();
        String sql="SELECT * from Empleado";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Empleado n=new Empleado();
                n.setId(rs.getString(1));
                n.setNom(rs.getString(2));
                n.setApe(rs.getString(3));
                n.setUser(rs.getString(4));
                n.setPasw(rs.getString(5));
                n.setDni(rs.getString(6));
                n.setTel(rs.getString(7));
                lista.add(n);
            }
        } catch(Exception e){ 
        }
        return lista;
    }
    
    public Empleado Buscar(String id){
        Empleado n= null;
        String sql="SELECT * from Empleado where idEmpleado like ?";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
            while(rs.next()){
                n = new Empleado();
                n.setId(rs.getString(1));
                n.setNom(rs.getString(2));
                n.setApe(rs.getString(3));
                n.setUser(rs.getString(4));
                n.setPasw(rs.getString(5));
                n.setDni(rs.getString(6));
                n.setTel(rs.getString(7));
            }
        } catch(Exception e){ 
        }
        return n;
    }
    
    public boolean login(Empleado ad){
        String  sql="SELECT UserName, PassAdmin from administrador where UserName= ?";
        
        try {
            con=cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, ad.getUser());
            rs = ps.executeQuery();
            
            if(rs.next()){
                if(ad.getPasw().equals(rs.getString(2))){
                    return true;
                }else{
                    return false;
                }
            }
            return false;
        }catch (SQLException ex){
            return false;
        }
    }
}
