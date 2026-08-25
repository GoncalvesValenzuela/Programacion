package Ejercicio10;

public class EmpleadoVentas extends Empleado{
    private double totalVentas;

    public EmpleadoVentas(String nombre, int sueldoBase, double totalVentas) {
        super(nombre, sueldoBase);
        this.totalVentas = totalVentas;
    }

    @Override
    public double calcularSueldo(){
        return super.calcularSueldo() + (this.totalVentas*0.05);
    }
}
