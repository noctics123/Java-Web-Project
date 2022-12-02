/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interface;

import Modelo.Destino;
import java.util.List;

/**
 *
 * @author utente
 */
public interface IDestino {
    public void Registrar(String destino, String fecha, double costo, String imagen, String categoria);
    public void Eliminar(String id);
    public void Modificar(String id, String destino, String fecha, double costo, String imagen, String categoria);
    public List<Destino> Listar();
}
