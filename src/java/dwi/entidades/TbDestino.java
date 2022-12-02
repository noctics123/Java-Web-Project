/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dwi.entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Master
 */
@Entity
@Table(name = "destino")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TbDestino.findAll", query = "SELECT t FROM destino t")
    , @NamedQuery(name = "TbDestino.findByIdDestino", query = "SELECT t FROM destino t WHERE t.IdDestino = :idDestino")
    , @NamedQuery(name = "TbDestino.findByDestino", query = "SELECT t FROM destino t WHERE t.Destino = :Destino")
    , @NamedQuery(name = "TbDestino.findByCosto", query = "SELECT t FROM destino t WHERE t.Costo = :Costo")})
public class TbDestino implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idPersona")
    private String idDestino;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Destino")
    private String Destino;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Costo")
    private Double Costo;

    public TbDestino() {
    }

    public TbDestino(String idDestino) {
        this.idDestino = idDestino;
    }

    public TbDestino(String idDestino, String Destino, Double Costo) {
        this.idDestino = idDestino;
        this.Destino = Destino;
        this.Costo = Costo;
    }

    public String getIdDestino() {
        return idDestino;
    }

    public void setIdDestino(String idDestino) {
        this.idDestino = idDestino;
    }

    public String getDestino() {
        return Destino;
    }

    public void setDestino(String Destino) {
        this.Destino = Destino;
    }

    public Double getCosto() {
        return Costo;
    }

    public void setCosto(Double Costo) {
        this.Costo = Costo;
    }

    
}
