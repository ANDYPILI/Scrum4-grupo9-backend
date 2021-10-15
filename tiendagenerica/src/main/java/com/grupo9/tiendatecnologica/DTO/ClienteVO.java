package com.grupo9.tiendatecnologica.DTO;

import java.io.Serializable;

//todas las clases entidad deben ser serializables, y deben estar encapsuladas
public class ClienteVO implements Serializable {

	//Identificador único de las clases entidad
	private static final long serialVersionUID = 1L;
	
	private Integer cedula_cliente;
	private String correo_electronico;
	private String direccion;
	private String nombre_completo;
	private Integer telefono;
	
	public Integer getCedula_cliente() {
		return cedula_cliente;
	}
	public void setCedula_cliente(Integer cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}
	public String getCorreo_electronico() {
		return correo_electronico;
	}
	public void setCorreo_electronico(String correo_electronico) {
		this.correo_electronico = correo_electronico;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getNombre_completo() {
		return nombre_completo;
	}
	public void setNombre_completo(String nombre_completo) {
		this.nombre_completo = nombre_completo;
	}
	public Integer getTelefono() {
		return telefono;
	}
	public void setTelefono(Integer telefono) {
		this.telefono = telefono;
	}
	
}

