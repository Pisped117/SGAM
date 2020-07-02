
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Andres Alvarez
 */
public class Conexion {
        // Creación de las variables para la conexión
    
    private String USERNAME ="root";
    private String PASSWORD ="admin";
    private String HOST ="localhost";
    private String PORT="3306";
    private String DATABASE ="sgam?useTimezone=true&serverTimezone=UTC&useSSL=false";
    private String CLASSNAME="com.mysql.cj.jdbc.Driver";
    private String URL="jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    private Connection con;
    
    // Aqui se define el constructor para la clase Conexion
    
    public Conexion(){
        try{
            Class.forName(CLASSNAME);
            con=DriverManager.getConnection(URL, USERNAME,PASSWORD);
            
        }catch (ClassNotFoundException e){
            System.err.println("ERROR "+e);
        }catch(SQLException e){
            System.err.println("ERROR "+e);
        }
        }
    public Connection getConexion(){
        return con;
    
    }
    
    // Codigo para probar la conexión de datos
    public static void main(String[]args){
    
    Conexion con = new Conexion();
    con.getConexion();
    
    }
}
