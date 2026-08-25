package Ejercicio9;

public class Motocicleta extends Vehiculo{
    private Boolean tieneSidecar;

    public Motocicleta(String marca, String modelo, Boolean tieneSidecar) {
        super(marca,modelo);
        this.tieneSidecar = tieneSidecar;
    }
    public void info(){
        System.out.println("Marca: "+super.getMarca());
        System.out.println("Modelo: "+super.getModelo());
        if(tieneSidecar== true){
            System.out.println("Tiene sidecar?: Si");
        }else{
            System.out.println("Tiene sidecar?: No");
        }
    }
}
