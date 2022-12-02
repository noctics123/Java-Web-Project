/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interface;

import Modelo.Blog;
import java.util.List;

/**
 *
 * @author utente
 */
public interface IBlog {
    public void Registrar(String destino, String descripcion, String imagen);
    public void Eliminar(String id);
    public void Modificar(String id, String destino, String descripcion, String imagen);
    public List<Blog> Listar();
}
