/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interface;

import Modelo.Empleado;
import java.util.List;

/**
 *
 * @author utente
 */
public interface IEmpleado {
    public void Registrar(String nombre, String apellido, String dni, String tel, String usuario, String passw);
    public void Eliminar(String id);
    public void Modificar(String id, String nombre, String apellido, String dni, String tel, String usuario, String passw);
    public List<Empleado> Listar();
}
