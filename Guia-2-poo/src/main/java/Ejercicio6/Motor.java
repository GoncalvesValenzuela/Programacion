package Ejercicio6;

public class Motor {
    private String tipo;
    private Boolean estado;


    public Motor(String tipo) {
        this.tipo = tipo;
        this.estado = false;
    }

    public void encender(){
        this.estado = true;
        System.out.println("El motor "+tipo+" se ha encendido correctamente");
    }
}
