package Ejercicio8;

import Ejercicio3.Producto;

import java.util.ArrayList;

public class CarritoDeCompras {
    private ArrayList<Producto> productos;

    public CarritoDeCompras() {
        this.productos = new ArrayList<>();

    }

    public void agregarProducto(Producto producto){
        this.productos.add(producto);
        System.out.println("Producto '"+producto.getNombre()+"' agregado al carrito");
    }
    public double calcularTotal(){
        double total = 0.0;

        for (Producto i: this.productos){
            total += i.getPrecio();
        }
        return total;
    }
}
