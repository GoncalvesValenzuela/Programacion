package Ejercicio4;

public class CuentaBancaria {
    private String titular;
    private double saldo;

    public CuentaBancaria(String titular, double saldo) {
        this.titular = titular;
        this.saldo = saldo;
    }

    public void mostrarSaldo(){

        System.out.println("Saldo actual: "+saldo);
    }
    public void depositar(double monto){
        if (monto > 0){
            saldo = saldo + monto;
            System.out.println("Deposito de "+monto+" realizado con éxito. Nuevo saldo: "+ saldo );
        }else{
            System.out.println("Deposito debe ser mayor a 0");
        }
    }
    public void retirar (double monto){
        if (saldo >= monto){
            saldo = saldo - monto;
            System.out.println("Monto de "+monto+" retirado con éxito. Nuevo saldo: "+saldo);}
        else{
            System.out.println("No hay fondos suficientes para retirar "+monto+". Saldo actual: "+saldo);
        }
    }
}
