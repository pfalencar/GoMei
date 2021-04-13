package model;

import java.util.Date;

public class Estoque {
	
	private Long idEstoque;
	private Long usuarioId;
	private String descricaoEstoque;
	private Double preco;
	private Double quantidade;
	private Date dt;
	
	public Long getIdEstoque() {
		return idEstoque;
	}
	public void setIdEstoque(Long idEstoque) {
		this.idEstoque = idEstoque;
	}
	public Long getUsuarioId() {
		return usuarioId;
	}
	public void setUsuarioId(Long usuarioId) {
		this.usuarioId = usuarioId;
	}
	public String getDescricaoEstoque() {
		return descricaoEstoque;
	}
	public void setDescricaoEstoque(String descricaoEstoque) {
		this.descricaoEstoque = descricaoEstoque;
	}
	public Double getPreco() {
		return preco;
	}
	public void setPreco(Double preco) {
		this.preco = preco;
	}
	public Double getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(Double quantidade) {
		this.quantidade = quantidade;
	}
	public Date getDt() {
		return dt;
	}
	public void setDt(Date dt) {
		this.dt = dt;
	}
	
	

}
