package Ejercicio9;

public class Automovil extends Vehiculo{
    private int cantidadDePuertas;

    public Automovil(String marca,String modelo,int cantidadDePuertas) {
        super(marca,modelo);
        this.cantidadDePuertas = cantidadDePuertas;
    }
    public void info(){
        System.out.println("Marca: "+super.getMarca());
        System.out.println("Modelo: "+super.getModelo());
        System.out.println("Cantidad de puertas: "+cantidadDePuertas);
    }


}
