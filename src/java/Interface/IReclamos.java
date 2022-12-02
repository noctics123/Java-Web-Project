/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interface;

import Modelo.Reclamo;
import java.util.List;

/**
 *
 * @author utente
 */
public interface IReclamos {
    public void Registrar(String Nombre, String Apellido, String documento, String domicilio, String email, String telefono, String descripcion);
    public List<Reclamo> Listar();
}
