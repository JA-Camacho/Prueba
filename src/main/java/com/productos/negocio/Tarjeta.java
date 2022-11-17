package com.productos.negocio;

import java.sql.Date;
import java.sql.PreparedStatement;

import com.productos.datos.Conexion;

public class Tarjeta {
	private String id_tar;
	private String numero_tar;
	private String titular_tar;
	private String fechaVencimiento_tar;
	private String cvv_tar;
	public String getId_tar() {
		return id_tar;
	}
	public void setId_tar(String id_tar) {
		this.id_tar = id_tar;
	}
	public String getNumero_tar() {
		return numero_tar;
	}
	public void setNumero_tar(String numero_tar) {
		this.numero_tar = numero_tar;
	}
	public String getTitular_tar() {
		return titular_tar;
	}
	public void setTitular_tar(String titular_tar) {
		this.titular_tar = titular_tar;
	}
	public String getFechaVencimiento_tar() {
		return fechaVencimiento_tar;
	}
	public void setFechaVencimiento_tar(String fechaVencimiento_tar) {
		this.fechaVencimiento_tar = fechaVencimiento_tar;
	}
	public String getCvv_tar() {
		return cvv_tar;
	}
	public void setCvv_tar(String cvv_tar) {
		this.cvv_tar = cvv_tar;
	}
	
	public String ingresarTarjeta(String numero_tar, String titular_tar, String fechaVencimiento, String cvv_tar)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_tarjeta (numero_tar,"
				+ "titular_tar, fechaVencimiento_tar, cvv_tar) "
				+ "VALUES(?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setString(1, numero_tar);
			pr.setString(2, titular_tar);
			pr.setString(3, fechaVencimiento);
			pr.setString(4, cvv_tar);
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
}
