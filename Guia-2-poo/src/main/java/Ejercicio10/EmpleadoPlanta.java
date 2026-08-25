package Ejercicio10;

public class EmpleadoPlanta extends Empleado{

    public EmpleadoPlanta(String nombre, int sueldoBase) {
        super(nombre, sueldoBase);
    }

    @Override
    public double calcularSueldo(){
        return super.calcularSueldo()*1.10;
    }
}
