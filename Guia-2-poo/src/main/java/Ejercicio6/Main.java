package Ejercicio6;

public class Main {
    public static void main(String[] args) {
        Motor motor1 = new Motor("V6");

        Auto auto1 = new Auto("Toyota","Supra",motor1);

        auto1.arrancar();
    }
}
