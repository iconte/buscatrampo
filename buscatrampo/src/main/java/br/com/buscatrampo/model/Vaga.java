package br.com.buscatrampo.model;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name="vaga")
@SequenceGenerator(name="vaga_seq")
public class Vaga {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column(nullable=false,name="local")
	private String local;
	
	@Column(nullable=false,name="codigo")
	private String codigo;
	
	@Enumerated(EnumType.STRING)
	private Ramo ramo;
	
	@Column(nullable=false,name="descricao")
	private String descricao;
	
	@Temporal(TemporalType.DATE)
	@Column(name="datacriacao")
	private Date dataCriacao;
	
	@Column(name="salario")
	private BigDecimal salario;
	
	@Lob
	@Column(name="planilha")
	private byte[] planilha;
	
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public Ramo getRamo() {
		return ramo;
	}
	public void setRamo(Ramo ramo) {
		this.ramo = ramo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Date getDataCriacao() {
		return dataCriacao;
	}
	public void setDataCriacao(Date dataCriacao) {
		this.dataCriacao = dataCriacao;
	}
	public BigDecimal getSalario() {
		return salario;
	}
	public void setSalario(BigDecimal salario) {
		this.salario = salario;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public byte[] getPlanilha() {
		return planilha;
	}
	public void setPlanilha(byte[] planilha) {
		this.planilha = planilha;
	}
	
	
}
