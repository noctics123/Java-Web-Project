/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Config.Conexion;
import Modelo.Blog;
import Interface.IBlog;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author utente
 */
public class BlogDAO implements IBlog{
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override
    public void Registrar(String destino, String descripcion, String imagen) {
        String sql = "call In_Blog(?,?,?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, destino);
            ps.setString(2, descripcion);
            ps.setString(3, imagen);
            rs=ps.executeQuery();
        } catch(Exception e){ 
            e.printStackTrace();
        }
    }
    
    @Override
    public void Eliminar(String id) {
        String sql = "call Del_Blog(?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
        } catch(Exception e){ 
        }
    }
    
    @Override
    public void Modificar(String id, String destino, String descripcion, String imagen) {
        String sql = "call Mod_Blog(?,?,?,?)";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, destino);
            ps.setString(3, descripcion);
            ps.setString(4, imagen);
            rs=ps.executeQuery();
        } catch(Exception e){ 
        }
    }
     
    @Override
    public List<Blog> Listar(){
        List<Blog> lista=new ArrayList();
        String sql="SELECT * from Blog";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Blog n=new Blog();
                n.setId(rs.getString(1));
                n.setDestino(rs.getString(2));
                n.setDescripcion(rs.getString(3));
                n.setImagen(rs.getString(4));
                lista.add(n);
            }
        } catch(Exception e){ 
        }
        return lista;
    }
    
    public Blog Buscar(String id){
        Blog d= null;
        String sql="SELECT * from Blog where idBlog like ?";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, id);
            rs=ps.executeQuery();
            while(rs.next()){
                d = new Blog();
                d.setId(rs.getString(1));
                d.setDestino(rs.getString(2));
                d.setDescripcion(rs.getString(3));
                d.setImagen(rs.getString(4));
            }
        } catch(Exception e){ 
        }
        return d;
    }
}
