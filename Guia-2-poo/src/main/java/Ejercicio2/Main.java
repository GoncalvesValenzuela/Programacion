package Ejercicio2;

public class Main {
    public static void main(String[] args) {

        Termostato temperatura = new Termostato(25.0);

        temperatura.setTemperatura(35.5);
        temperatura.setTemperatura(8.0);
        temperatura.setTemperatura(25);

        System.out.println(temperatura.getTemperatura());
    }
}
