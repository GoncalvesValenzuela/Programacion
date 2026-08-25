package Ejercicio9;



public class Main {
    public static void main(String[] args) {

        Automovil auto1 = new Automovil("Toyota","Celica",4);
        Motocicleta moto1 = new Motocicleta("Hyundai","VR7",true);

        System.out.println("==============================");
        auto1.info();
        auto1.conducir();
        System.out.println("=============================");
        moto1.info();
        moto1.conducir();
        System.out.println("=============================");
    }
}
