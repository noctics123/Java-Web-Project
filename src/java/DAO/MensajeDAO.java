/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Interface.IMensaje;

/**
 *
 * @author Noctics
 */
public class MensajeDAO implements IMensaje{

    @Override
    public String Mensaje() {
        return "Cuenta Creada";
    }
    
    public String MensajeReclamo() {
        return "Solicitud Enviada";
    }
}
