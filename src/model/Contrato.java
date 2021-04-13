package model;

import java.util.Date;

public class Contrato {
	
	private Long idContrato;
	private Long usuarioId;
	private Long meiId;
	private Long funcionarioId;
	private String nomeFuncionario;
	private Date inicioContrato;
	private Date fimContrato;
	private Double valorHora;
	private String dtPagamento;
	private Double valorPagamento;
	private Date dt;
	
	public Long getIdContrato() {
		return idContrato;
	}
	public void setIdContrato(Long idContrato) {
		this.idContrato = idContrato;
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
	public Long getFuncionarioId() {
		return funcionarioId;
	}
	public void setFuncionarioId(Long funcionarioId) {
		this.funcionarioId = funcionarioId;
	}
	public String getNomeFuncionario() {
		return nomeFuncionario;
	}
	public void setNomeFuncionario(String nomeFuncionario) {
		this.nomeFuncionario = nomeFuncionario;
	}
	public Date getInicioContrato() {
		return inicioContrato;
	}
	public void setInicioContrato(Date inicioContrato) {
		this.inicioContrato = inicioContrato;
	}
	public Date getFimContrato() {
		return fimContrato;
	}
	public void setFimContrato(Date fimContrato) {
		this.fimContrato = fimContrato;
	}
	public Double getValorHora() {
		return valorHora;
	}
	public void setValorHora(Double valorHora) {
		this.valorHora = valorHora;
	}
	public String getDtPagamento() {
		return dtPagamento;
	}
	public void setDtPagamento(String dtPagamento) {
		this.dtPagamento = dtPagamento;
	}
	public Double getValorPagamento() {
		return valorPagamento;
	}
	public void setValorPagamento(Double valorPagamento) {
		this.valorPagamento = valorPagamento;
	}
	public Date getDt() {
		return dt;
	}
	public void setDt(Date dt) {
		this.dt = dt;
	}
	
	

}
