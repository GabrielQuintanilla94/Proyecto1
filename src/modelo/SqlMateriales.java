package modelo;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

public class SqlMateriales extends Conexion {

    public boolean consultarCds(DefaultTableModel model) {
        try {
            Connection con = getConexion();
            String sql = "SELECT * FROM cds";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            // Llena el modelo de la tabla con los datos de los CDs
            while (rs.next()) {
                model.addRow(new Object[]{
                    rs.getInt("ID"),
                    rs.getString("CodigoIdentificacion"),
                    rs.getString("Titulo"),
                    rs.getString("Artista"),
                    rs.getString("Genero"),
                    rs.getString("Duracion"),
                    rs.getInt("NumeroCanciones"),
                    rs.getString("Ubicacion"),
                    rs.getInt("Unidades"),
                    rs.getInt("UnidadesPrestados"),
                    rs.getInt("UnidadesDisponibles")
                });
            }
            return true;            
        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(null, "No se pudo consultar");
            return false;
        }
    }
    public boolean consultarLibros(DefaultTableModel model) {
        try {
            Connection con = getConexion();
            String sql = "SELECT * FROM libros";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            // Llena el modelo de la tabla con los datos de los CDs
            while (rs.next()) {
                model.addRow(new Object[]{
                    rs.getInt("ID"),
                    rs.getString("CodigoIdentificacion"),
                    rs.getString("Titulo"),
                    rs.getString("Autor"),
                    rs.getInt("Paginas"),
                    rs.getString("Editorial"),
                    rs.getString("ISBN"),
                    rs.getString("FechaPublicacion"),
                    rs.getString("Ubicacion"),
                    rs.getInt("Unidades"),
                    rs.getInt("UnidadesPrestados"),
                    rs.getInt("UnidadesDisponibles")
                });
            }
            return true;            
        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(null, "No se pudo consultar los libros ");
            return false;
        }
    }

    public boolean consultarRevistas(DefaultTableModel model) {
        try {
            Connection con = getConexion();
            String sql = "SELECT * FROM revistas";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            // Llena el modelo de la tabla con los datos de los CDs
            while (rs.next()) {
                model.addRow(new Object[]{
                    rs.getInt("ID"),
                    rs.getString("CodigoIdentificacion"),
                    rs.getString("Titulo"),
                    rs.getString("Editorial"),
                    rs.getString("Periodicidad"),
                    rs.getString("FechaPublicacion"),
                    rs.getString("Ubicacion"),
                    rs.getInt("Unidades"),
                    rs.getInt("UnidadesPrestados"),
                    rs.getInt("UnidadesDisponibles")
                });
            }
            return true;            
        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(null, "No se pudo consultar las revistas");
            return false;
        }
    }

    public boolean consultarDvds(DefaultTableModel model) {
    try {
        Connection con = getConexion();
        String sql = "SELECT * FROM dvds";
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        // Llena el modelo de la tabla con los datos de los DVDs
        while (rs.next()) {
            model.addRow(new Object[]{
                rs.getInt("ID"),
                rs.getString("CodigoIdentificacion"),
                rs.getString("Titulo"),
                rs.getString("Director"),
                rs.getString("Duracion"),
                rs.getString("Genero"),
                rs.getInt("Unidades"),
                rs.getInt("UnidadesPrestados"),
                rs.getInt("UnidadesDisponibles")
            });
        }
        return true;            
    } catch (SQLException ex) {
        ex.printStackTrace();
        JOptionPane.showMessageDialog(null, "No se pudo consultar los DVDs");
        return false;
    }
}


    public boolean agregarDVDs(String titulo, String director, String duracion, String genero, int unidades) {
    // Consulta SQL ajustada para coincidir con la tabla `dvds`
    String sql = "INSERT INTO dvds (Titulo, Director, Duracion, Genero, Unidades, UnidadesDisponibles) VALUES (?, ?, ?, ?, ?, ?)";
    
    // Calculamos las unidades disponibles (inicialmente iguales a `unidades`)
    int unidadesDisponibles = unidades - 1;

    // Llamamos al método `agregarMaterial` con los parámetros correctos
    return agregarMaterial(sql, titulo, director, duracion, genero, unidades, unidadesDisponibles);
}

  
    public boolean agregarCD(String titulo, String artista, String genero, String duracion, String ubicacion, int numeroCanciones, int unidades, int unidadesDisponibles) {
        String sql = "INSERT INTO cds (Titulo,Artista, Genero, Duracion, NumeroCanciones, Ubicacion, Unidades, UnidadesDisponibles) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        // Imprimir el SQL y los valores que se van a enviar
        System.out.println("SQL: " + sql);
        System.out.println("Valores: Artista=" + artista + ", Genero=" + genero + ", Duracion=" + duracion + 
                           ", NumeroCanciones=" + numeroCanciones + ", Ubicacion=" + ubicacion + 
                           ", Unidades=" + unidades + ", UnidadesDisponibles=" + (unidades - 1));

        return agregarMaterial(sql, titulo, artista, genero, duracion,numeroCanciones,  ubicacion, unidades, unidadesDisponibles);
    }

    public boolean agregarLibro(String titulo, String autor, int paginas, String editorial, String isbn, String fechapublicacion, String ubicacion, int unidades) {
        String sql = "INSERT INTO libros (Titulo, Autor, Paginas, Editorial, ISBN, FechaPublicacion, Ubicacion, Unidades, UnidadesDisponibles) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return agregarMaterial(sql, titulo, autor, paginas, editorial, isbn, fechapublicacion, ubicacion, unidades, unidades);
    }

    public boolean agregarRevista( String titulo, String editorial, String periodicidad, String fechapublicacion, String ubicacion, int unidades) {
        String sql = "INSERT INTO revistas ( Titulo, Editorial, Periodicidad, FechaPublicacion, Ubicacion, Unidades, UnidadesDisponibles) VALUES (?, ?, ?, ?, ?, ?, ?-1)";
        return agregarMaterial(sql, titulo, editorial, periodicidad, fechapublicacion, ubicacion, unidades, unidades);
    }


    private boolean agregarMaterial(String sql, Object... parametros) {
        PreparedStatement ps = null;
        Connection con = getConexion();

        try {
            ps = con.prepareStatement(sql);

            // Configura los parámetros de la consulta preparada
            for (int i = 0; i < parametros.length; i++) {
                ps.setObject(i + 1, parametros[i]);
            }

            // Ejecuta la consulta preparada
            ps.execute();

            JOptionPane.showMessageDialog(null, "Material agregado correctamente", "Éxito", JOptionPane.INFORMATION_MESSAGE);

            return true;
        } catch (SQLException ex) {
            Logger.getLogger(SqlMateriales.class.getName()).log(Level.SEVERE, null, ex);

            JOptionPane.showMessageDialog(null, "Error al agregar Material", "Error", JOptionPane.ERROR_MESSAGE);

            return false;
        }
    }

    public boolean configAlumnos(String idtipo, String limit) {
        String sql = "UPDATE usuarios SET limite = ? WHERE id_tipo = ?";
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, limit);
            ps.setString(2, idtipo);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Se modifico el limite");
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(SqlMateriales.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Error al modificar limite");

        }
        return false;
    }

    public boolean configurarCD(String unidadesdisponibles, String codigoidentificacion) {
        String sql = "UPDATE cds SET UnidadesDisponibles = ? WHERE CodigoIdentificacion = ? ";
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, unidadesdisponibles);
            ps.setString(2, codigoidentificacion);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Se realizo con exito la modificacion");
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(SqlMateriales.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Error al modificar", "Error", JOptionPane.ERROR_MESSAGE);
        }
        return false;

    }

    public boolean configurarLibro(String unidadesdisponibles, String codigoidentificacion) {
        String sql = "UPDATE libros SET UnidadesDisponibles = ? WHERE CodigoIdentificacion = ? ";
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, unidadesdisponibles);
            ps.setString(2, codigoidentificacion);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Se realizo con exito la modificacion");
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(SqlMateriales.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Error al modificar", "Error", JOptionPane.ERROR_MESSAGE);
        }
        return false;

    }

    public boolean configurarRevista(String unidadesdisponibles, String codigoidentificacion) {
        String sql = "UPDATE revistas SET UnidadesDisponibles = ? WHERE CodigoIdentificacion = ? ";
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, unidadesdisponibles);
            ps.setString(2, codigoidentificacion);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Se realizo con exito la modificacion");
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(SqlMateriales.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Error al modificar", "Error", JOptionPane.ERROR_MESSAGE);
        }
        return false;

    }

    public boolean configurarDVDs(String unidadesdisponibles, String codigoidentificacion) {
        String sql = "UPDATE dvds SET UnidadesDisponibles = ? WHERE CodigoIdentificacion = ? ";
        try {
            Connection con = getConexion();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, unidadesdisponibles);
            ps.setString(2, codigoidentificacion);
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null, "Se realizo con exito la modificacion");
            return true;

        } catch (SQLException ex) {
            Logger.getLogger(SqlMateriales.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Error al modificar", "Error", JOptionPane.ERROR_MESSAGE);
        }
        return false;

    }


}
