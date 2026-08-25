package Ejercicio8;

import Ejercicio3.Producto;

public class Main {
    public static void main(String[] args) {
        CarritoDeCompras carrito = new CarritoDeCompras();

        Producto producto1 = new Producto("Teclado Mecánico",40000);
        Producto producto2 = new Producto("Mouse Gamer", 35990);
        Producto producto3 = new Producto("Monitor 4k", 160000);

        System.out.println("=== AGREGANDO PRODUCTOS ===");

        carrito.agregarProducto(producto1);
        carrito.agregarProducto(producto2);
        carrito.agregarProducto(producto3);

        System.out.println("=== CALCULANDO TOTAL ===");

        double totalAPagar = carrito.calcularTotal();

        System.out.println("Su total a pagar es de: $"+totalAPagar);



    }
}
