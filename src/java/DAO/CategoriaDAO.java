/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Config.Conexion;
import Modelo.Categoria;
import Interface.ICategoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author utente
 */
public class CategoriaDAO implements ICategoria{
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public void Registrar(String destino) {
        String sql = "call In_Categoria(?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, destino);
            rs=ps.executeQuery();
        } catch(Exception e){ 
            e.printStackTrace();
        }
    }
    
    @Override
    public void Eliminar(String id) {
        String sql = "call Del_Categoria(?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
        } catch(Exception e){ 
        }
    }
    
    @Override
    public void Modificar(String id, String destino) {
        String sql = "call Mod_Categoria(?,?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, destino);
            System.out.println(ps);
            rs=ps.executeQuery();
        } catch(Exception e){ 
        }
    }
     
    @Override
    public List<Categoria> Listar(){
        List<Categoria> lista=new ArrayList();
        String sql="SELECT * from Categoria";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Categoria n=new Categoria();
                n.setId(rs.getString(1));
                n.setCategoria(rs.getString(2));
                lista.add(n);
            }
        } catch(Exception e){ 
        }
        return lista;
    }
    
    public Categoria Buscar(String id){
        Categoria d= null;
        String sql="SELECT * from Categoria where idCategoria like ?";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
            while(rs.next()){
                d = new Categoria();
                d.setId(rs.getString(1));
                d.setCategoria(rs.getString(2));
            }
        } catch(Exception e){ 
        }
        return d;
    }
}
