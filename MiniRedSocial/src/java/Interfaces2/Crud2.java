/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Interfaces2;
import Modelo2.Persona2;
import java.util.List;

public interface Crud2 {
   public List consultar();
   public List list(String usu);
   public boolean registrar(Persona2 per);
   public boolean editar(Persona2 per);
   public boolean eliminar(String Coment);
   
}
