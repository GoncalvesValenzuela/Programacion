package Ejercicio10;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<Empleado> listaEmpleados = new ArrayList<>();

        listaEmpleados.add(new EmpleadoPlanta("Diego",500000));
        listaEmpleados.add(new EmpleadoVentas("Raul",400000,1500000));

        System.out.println("=== LIQUIDACION DE SUELDOS ===");
        for (Empleado i:listaEmpleados){
            System.out.println("Empleado: "+i.getNombre());
            System.out.println("Sueldo final: $"+ i.calcularSueldo());
        }
    }
}
