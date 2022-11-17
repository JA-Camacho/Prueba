package com.productos.negocio;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.productos.datos.Conexion;

public class Usuario {
	private String Nombre;
	private String Cedula;
	private String Est_Civil;
	private String lugarRes;
	private Date fechaNac;
	private String color;
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getCedula() {
		return Cedula;
	}
	public void setCedula(String cedula) {
		Cedula = cedula;
	}
	public String getEst_Civil() {
		return Est_Civil;
	}
	public void setEst_Civil(String est_Civil) {
		Est_Civil = est_Civil;
	}
	public String getLugarRes() {
		return lugarRes;
	}
	public void setLugarRes(String lugarRes) {
		this.lugarRes = lugarRes;
	}
	public Date getFechaNac() {
		return fechaNac;
	}
	public void setFechaNac(Date fechaNac) {
		this.fechaNac = fechaNac;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	public String ingresarProducto(String nombre,String password, String cedula, String est_civil, String lugarRes, String fecha_nac, String color, String email)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_usuario (nombre,password,cedula,"
				+ "est_Civil,lugar_res,fecha_nac,color,email) "
				+ "VALUES(?,?,?,?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setString(1, nombre);
			pr.setString(2, password);
			pr.setString(3, cedula);
			pr.setString(4, est_civil);
			pr.setString(5, lugarRes);
			pr.setDate(6, Date.valueOf(fecha_nac));
			pr.setString(7, color);
			pr.setString(8, email);
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	
	public String mostrarUsuario() {
		String combo="<select name=cmbCedula>"; 
		String sql="SELECT cedula FROM tb_usuario"; 
		ResultSet rs=null;
		Conexion con=new Conexion();
		try
		{
			rs=con.Consulta(sql); 
			while(rs.next())
			{
				combo+="<option value="+rs.getString(1)+ ">"+rs.getString(1)+"</option>";
			}
			combo+="</select>";

		}

		catch(SQLException e) {
			System.out.print(e.getMessage()); return combo;
		}
		return combo;
	}
	
	public void ConsulUsuario(String cedula) {
		Conexion obj = new Conexion();
		ResultSet rs = null;
		String sql = "SELECT nombre FROM tb_usuario where cedula = '" + cedula + "'";
		try {
			rs = obj.Consulta(sql);
			while (rs.next()) {
				setCedula(cedula);
				setNombre(rs.getString(1));
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}
	
}
