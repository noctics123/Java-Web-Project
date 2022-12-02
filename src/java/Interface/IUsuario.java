/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interface;

import Modelo.Usuario;

/**
 *
 * @author Noctics
 */
public interface IUsuario {
    public Usuario validar(String correo, String pass);
    public void Registrar(String Nombre, String Apellido, String correo, String contraseña );
    public Usuario BuscarUsuario(String correo);
}
