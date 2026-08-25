package Ejercicio6;


public class Auto {
    private String marca;
    private String modelo;
    private Motor motor;

    public Auto(String marca, String modelo, Motor motor) {
        this.marca = marca;
        this.modelo = modelo;
        this.motor = motor;
    }


    public void arrancar(){
        System.out.println("Arrancando el auto: "+marca+" "+modelo+"...");
        this.motor.encender();
    }
}
