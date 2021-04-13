package model;

import java.util.Date;

public class VendaEstoque {
	
	private Long idVendaEstoque;
	private Long usuarioId;
	private Long meiId;
	private Long clienteId;
	private Long estoqueId;
	private String descricaoEstoque;
	private Double valorUnitario;
	private Double qtd;
	private String nomeCliente;
	private String formaPgto;
	private Date dtVenda;	
	private Double valorTotal;
	private String situacao;
	
	public Long getIdVendaEstoque() {
		return idVendaEstoque;
	}
	public void setIdVendaEstoque(Long idVendaEstoque) {
		this.idVendaEstoque = idVendaEstoque;
	}
	public Long getUsuarioId() {
		return usuarioId;
	}
	public void setUsuarioId(Long usuarioId) {
		this.usuarioId = usuarioId;
	}
	public Long getMeiId() {
		return meiId;
	}
	public void setMeiId(Long meiId) {
		this.meiId = meiId;
	}
	public Long getClienteId() {
		return clienteId;
	}
	public void setClienteId(Long clienteId) {
		this.clienteId = clienteId;
	}
	public Long getEstoqueId() {
		return estoqueId;
	}
	public void setEstoqueId(Long estoqueId) {
		this.estoqueId = estoqueId;
	}
	public String getDescricaoEstoque() {
		return descricaoEstoque;
	}
	public void setDescricaoEstoque(String descricaoEstoque) {
		this.descricaoEstoque = descricaoEstoque;
	}
	public Double getValorUnitario() {
		return valorUnitario;
	}
	public void setValorUnitario(Double valorUnitario) {
		this.valorUnitario = valorUnitario;
	}
	public Double getQtd() {
		return qtd;
	}
	public void setQtd(Double qtd) {
		this.qtd = qtd;
	}
	public String getNomeCliente() {
		return nomeCliente;
	}
	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}
	public String getFormaPgto() {
		return formaPgto;
	}
	public void setFormaPgto(String formaPgto) {
		this.formaPgto = formaPgto;
	}
	public Date getDtVenda() {
		return dtVenda;
	}
	public void setDtVenda(Date dtVenda) {
		this.dtVenda = dtVenda;
	}
	public Double getValorTotal() {
		return valorTotal;
	}
	public void setValorTotal(Double valorTotal) {
		this.valorTotal = valorTotal;
	}
	public String getSituacao() {
		return situacao;
	}
	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}
	
	
	
	
}
