package br.com.buscatrampo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="ramo")
@SequenceGenerator(name="VAGA_SEQ")
public class Ramo implements Serializable{
	
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 private Long id;
	 
	 @Column(name="codigo")
	 private String codigo;
	 
	 @Column(name="descricao")
	 private String descricao;
	 
	 
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
}
