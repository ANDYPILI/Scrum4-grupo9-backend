package com.grupo9.tiendatecnologica.BO;


import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo9.tiendatecnologica.DAO.ProveedorDAO;
import com.grupo9.tiendatecnologica.DTO.ProveedorVO;


@RestController
public class ProveedorController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarproveedor")
	public void registrarProveedor(ProveedorVO user) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.registrarProveedor(user);
	}

	@GetMapping("/consultarproveedor")
	public ArrayList<ProveedorVO> consultarProveedor(Integer nit) {
		ProveedorDAO Dao = new ProveedorDAO();
		return Dao.consultarProveedor(nit);
	}

	@GetMapping("/listarProveedor")
	public ArrayList<ProveedorVO> listaDeProveedores() {
		ProveedorDAO Dao = new ProveedorDAO();
		return Dao.listaDeProveedores();
	}
	
	@DeleteMapping("/eliminarproveedor")
	public void eliminarProveedor(Integer nit) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.eliminarProveedor(nit);
	}
	
	@PutMapping("/actualizarproveedor")
	public void actualizarProveedor(ProveedorVO user) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.actualizarProveedor(user);
	}

}