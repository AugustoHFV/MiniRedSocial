/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO2;

import Interfaces2.Crud2;
import Modelo.Persona;
import Modelo2.Persona2;
import config2.Conexion2;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PersonaDAO2 implements Crud2{
    
    Connection con;
    PreparedStatement ps;
    Statement st;
    ResultSet rs;
    Persona2 p=new Persona2();
    Conexion2 cn= new Conexion2();
    
   
    @Override
    public List consultar() {
   
        ArrayList<Persona2> list= new ArrayList<>();
        String sql="select * from Comentarios";
        try {
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                Persona2 per= new Persona2();
                per.setComentario(rs.getString("Comentario"));
                per.setUsuario(rs.getString("De"));
                list.add(per);
            }
            
            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
        
        
        return list;
    }

    @Override
    public List list(String Usu) {
        ArrayList<Persona2> list= new ArrayList<>();
          String sql="select * from Comentarios where Para='"+Usu+"'";
         try {
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                Persona2 per= new Persona2();
                per.setUsuario(rs.getString("De"));
                per.setComentario(rs.getString("Comentario"));
                list.add(per);
            }
            
            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
        
        
        return list;
    }
    

    @Override
    public boolean registrar(Persona2 per) {
        String sql="insert into Comentarios(Comentario,De,Para) values('"+per.getComentario()+"','"+per.getUsuario()+"','"+per.getUsuario1()+"')";
        try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);        
        ps.executeUpdate();
        }catch(Exception e){
            System.err.println("Error"+e);
        }
        return false;
    
    }


    @Override
    public boolean editar(Persona2 per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(String C) {
        String sql="delete from Comentarios where Comentario='"+C+"'";
        try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);        
        ps.executeUpdate();
        }catch(Exception e){
            System.err.println("Error"+e);
        }
        return false;
    }

    
}
