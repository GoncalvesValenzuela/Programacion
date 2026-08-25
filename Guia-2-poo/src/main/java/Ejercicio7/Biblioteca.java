package Ejercicio7;

import java.util.ArrayList;

public class Biblioteca {
    private ArrayList<Libro> libros;

    public Biblioteca(){
        this.libros = new ArrayList<>();
    }

    public void agregarLibro(Libro libro){
        this.libros.add(libro);
        System.out.println("Libro '"+ libro.getTitulo()+ "' agregado exitosamente! :D");
    }
    public void mostrarLibros(){
        System.out.println("           === Libros en la biblioteca ===");
        for(Libro i : this.libros){
            System.out.println("====================================================");
            System.out.println("Titulo: "+ i.getTitulo()+ "\nAutor: "+i.getAutor());
            System.out.println("====================================================");
        }
    }
}
