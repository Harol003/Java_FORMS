/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package poli_ap2_login;

/**
 *
 * @author Harol
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conectar {

    public static Connection conectar() {
        Connection conexion = null;
        String url = "jdbc:mysql://192.168.20.131:3306/aplicacionesdos";
        String usuario = "example_user";
        String contraseña = "password";

        try {
            conexion = DriverManager.getConnection(url, usuario, contraseña);
            JOptionPane.showMessageDialog(null, "Conexión exitosa a la base de datos MySQL.", "Conexión Exitosa", JOptionPane.INFORMATION_MESSAGE);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error al conectar a la base de datos MySQL: " + e.getMessage(), "Error de Conexión", JOptionPane.ERROR_MESSAGE);
        }

        return conexion;
    }
}
