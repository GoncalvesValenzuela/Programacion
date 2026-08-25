package Ejercicio7;

public class Main {
    public static void main(String[] args) {
        Biblioteca biblioteca1 = new Biblioteca();

        Libro libro1 = new Libro("Harry Potter y la piedra filosofal", "J.K. Rowling");
        Libro libro2 = new Libro("El último deseo","Andrzej Sapkowski");

        biblioteca1.agregarLibro(libro1);
        biblioteca1.agregarLibro(libro2);

        biblioteca1.mostrarLibros();
    }
}
