/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interface;

import Modelo.Informe;
import java.util.List;

/**
 *
 * @author utente
 */
public interface IInforme {
    public void Registrar(String Nombre, String Apellido, String correo, String telefono, String mensaje);
    public List<Informe> Listar();
}
