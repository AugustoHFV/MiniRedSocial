/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO2;

import Interfaces2.Crud2;
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
                per.setUsuario(rs.getString("Usuario"));
                list.add(per);
            }
            
            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
        
        
        return list;
    }

    @Override
    public Persona2 list(int id) {
        
          String sql="select * from Comentarios where id="+id;
        try {
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                p.setComentario(rs.getString("Comentario"));
                p.setUsuario(rs.getString("Usuario"));
            }        
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
            
        return p;
    }
    

    @Override
    public boolean registrar(Persona2 per) {
        String sql="insert into Comentarios(Comentario,Usuario) values('"+per.getComentario()+"','"+per.getUsuario()+"')";
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
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
