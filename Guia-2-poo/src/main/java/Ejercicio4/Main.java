package Ejercicio4;

public class Main {
    public static void main(String[] args) {
        CuentaBancaria cliente1 = new CuentaBancaria("Victor",300000);

        cliente1.mostrarSaldo();
        cliente1.depositar(0);
        cliente1.depositar(100000);
        cliente1.mostrarSaldo();
        cliente1.retirar(1000000);
        cliente1.retirar(400000);
        cliente1.mostrarSaldo();
    }
}
