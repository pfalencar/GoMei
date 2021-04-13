package model;

import java.util.Date;

public class VendaServico {
	
	private Long idVendaServico;
	private Long usuarioId;
	private Long meiId;
	private Long clienteId;
	private Long servicoId;
	private String descricaoServico;
	private Double valorUnitario;
	private Double qtd;
	private String nomeCliente;
	private String formaPgto;
	private Date dtVenda;	
	private Double valorTotal;
	private String situacao;
	
	public Long getIdVendaServico() {
		return idVendaServico;
	}
	public void setIdVendaServico(Long idVendaServico) {
		this.idVendaServico = idVendaServico;
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
	public Long getServicoId() {
		return servicoId;
	}
	public void setServicoId(Long servicoId) {
		this.servicoId = servicoId;
	}
	public String getDescricaoServico() {
		return descricaoServico;
	}
	public void setDescricaoServico(String descricaoServico) {
		this.descricaoServico = descricaoServico;
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
