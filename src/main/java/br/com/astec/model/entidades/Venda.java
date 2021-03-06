/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.astec.model.entidades;

import br.com.astec.model.entidades.Cliente;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Fernando
 */
public class Venda extends AbstractEntity{

    public Venda(Integer id, Integer idCliente, Date dataCompra, Double valorTotal,List<ItemVenda> listaItem) {
        this.id = id;
        this.idCliente = idCliente;
        this.dataCompra = dataCompra;
        this.valorTotal = valorTotal;
        this.listaItem = listaItem;
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getClienteId() {
        return idCliente;
    }

    public void setClienteId(Integer cliente) {
        this.idCliente = cliente;
    }

    public Date getDataCompra() {
        return dataCompra;
    }

    public void setDataCompra(Date dataCompra) {
        this.dataCompra = dataCompra;
    }

    public Double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(Double valorTotal) {
        this.valorTotal = valorTotal;
    }

    public List<ItemVenda> getListaItem() {
        return listaItem;
    }

    public void setListaItem(List<ItemVenda> listaItem) {
        this.listaItem = listaItem;
    }
    private Integer id;
    private Integer idCliente;
    private Date dataCompra;
    private Double valorTotal;
    private List<ItemVenda> listaItem = new ArrayList<ItemVenda>();
}
