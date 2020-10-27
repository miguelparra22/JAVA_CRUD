/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Persona;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Miguel
 */
public class PersonaDAO implements CRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p = new Persona();

    @Override
    public List listar() {
        ArrayList<Persona> list = new ArrayList<>();
        String sql = "Select * from persona";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Persona person = new Persona();
                person.setId(rs.getInt("id"));
                person.setNombre(rs.getString("nombre"));
                person.setCorreo(rs.getString("correo"));
                list.add(person);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    @Override
    public Persona list(int id) {
        String sql = "Select * from persona where id=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {

                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setCorreo(rs.getString("correo"));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return p;
    }

    @Override
    public boolean agregar(Persona per) {

        String sql = "INSERT INTO persona (nombre, correo) VALUES ( '" + per.getNombre() + "', '" + per.getCorreo() + "')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }

    @Override
    public boolean editar(Persona per) {

        String sql = "update persona set nombre='" + per.getNombre() + "', correo='" + per.getCorreo() + "' where id=" + per.getId();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from persona where id=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
          System.err.print(e);
        }

        return false;
    }

}
