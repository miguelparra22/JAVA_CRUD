/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.Persona;
import java.util.List;

/**
 *
 * @author Miguel
 */
public interface CRUD {
    public List listar();
    public Persona list(int id);
    public boolean agregar(Persona per);
    public boolean editar(Persona per);
    public boolean eliminar(int id);
}
