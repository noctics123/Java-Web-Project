/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interface;

import Modelo.Categoria;
import java.util.List;

/**
 *
 * @author utente
 */
public interface ICategoria {
    public void Registrar(String destino);
    public void Eliminar(String id);
    public void Modificar(String id, String destino);
    public List<Categoria> Listar();
}
