package com.grupo9.tiendatecnologica.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

/**
 * Clase que permite conectar con la base de datos
 */
public class Conexion {
	
	/** Parametros de conexion */
//	static String nombre_base_datos = "g9e4";
//	//root
//	static String usuariobd = "admin";
//	//mintic
//	static String clavebd = "minticroca";
//	//127.0.0.1 == localhost
//	static String url = "jdbc:mysql://tiendasgenericasdr-g9-g38-53.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/" + nombre_base_datos;
	
	/** Parametros de conexion */
	static String nombre_base_datos = "tiendatecnologica";
	// root
	static String usuariobd ="root";
	// mintic
	static String clavebd = "mintic";
	// 127.0.0.1 == localhost
	static String url = "jdbc:mysql://127.0.0.1/" + nombre_base_datos;
	
	//objeto sin inicializar de la conexi�n
	Connection connection = null;
	/** Constructor de DbConnection */
	public Conexion() {
		try {
			// obtenemos el driver de para mysql
			Class.forName("com.mysql.cj.jdbc.Driver");
			// obtenemos la conexi�n
			connection = DriverManager.getConnection(url, usuariobd, clavebd);
			//si hay conexi�n correcta mostrar informaci�n en consola
			if (connection != null) {
				System.out.println("Conexi�n a base de datos " 
			+ nombre_base_datos + " OK\n");
				
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd 'at' HH:mm:ss z");
				Date date = new Date(System.currentTimeMillis());
				System.out.println(formatter.format(date));
				System.out.println(url);
				
			}
		
		} catch (SQLException e) {
			//error de la base de datos
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			//error en carga de clases
			System.out.println(e);
		} catch (Exception e) {
			//cualquier otro error
			System.out.println(e);
		}
	}

	/** Permite retornar la conexi�n */
	public Connection getConnection() {
		return connection;
	}
	
	//cerrando la conexi�n
	public void desconectar() {
		connection = null;
	}
}