package Ejercicio1;

public class Main {
    public static void main(String[] args) {

        Persona persona1 = new Persona();
        persona1.nombre = "Diego";
        persona1.edad = 32;

        Persona persona2 = new Persona();
        persona2.nombre = "Javier";
        persona2.edad = 25;

        persona1.presentarse();
        persona2.presentarse();

        }
    }

