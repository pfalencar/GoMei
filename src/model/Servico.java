package model;

import java.util.Date;

public class Servico {
	
	private Long idServico;
	private Long usuarioId;
	private String descricaoServico;
	private Double precoServico;
	private Double quantidadeServico;
	private Date dt;
	
	public Long getIdServico() {
		return idServico;
	}
	public void setIdServico(Long idServico) {
		this.idServico = idServico;
	}
	public Long getUsuarioId() {
		return usuarioId;
	}
	public void setUsuarioId(Long usuarioId) {
		this.usuarioId = usuarioId;
	}
	public String getDescricaoServico() {
		return descricaoServico;
	}
	public void setDescricaoServico(String descricaoServico) {
		this.descricaoServico = descricaoServico;
	}
	public Double getPrecoServico() {
		return precoServico;
	}
	public void setPrecoServico(Double precoServico) {
		this.precoServico = precoServico;
	}
	public Double getQuantidadeServico() {
		return quantidadeServico;
	}
	public void setQuantidadeServico(Double quantidadeServico) {
		this.quantidadeServico = quantidadeServico;
	}
	public Date getDt() {
		return dt;
	}
	public void setDt(Date dt) {
		this.dt = dt;
	}
	
	

}
