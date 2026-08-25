package Ejercicio5;

public class LuzInteligente {
    private String ubicacion;
    private Boolean encendida;
    private int brillo;

    public LuzInteligente(String ubicacion, Boolean encendida, int brillo) {
        this.ubicacion = ubicacion;
        this.encendida = encendida;
        if (brillo > 0 && brillo <= 100){
            this.brillo = brillo;}
        else{
            throw new IllegalArgumentException("Valor de brillo inválido, inténtelo denuevo");
        }
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public Boolean getEncendida() {
        return encendida;
    }

    public void setEncendida(Boolean encendida) {
        this.encendida = encendida;
    }

    public int getBrillo() {
        return brillo;
    }

    public void setBrillo(int brillo) {
        if (encendida == true && brillo > 0 && brillo <= 100 ){
        this.brillo = brillo;}
        else if(encendida == false && brillo > 0 && brillo <= 100){
            System.out.println("Luz se encuentra apagada, no se puede aumentar el brillo");
        }else{
            System.out.println("Brillo deseado ("+brillo+") no se encuentra dentro del rango entre 0 y 100");
        }
    }

    public void encender(){
        this.encendida = true;
        System.out.println("Luz encendida");
    }
    public void apagar(){
        this.encendida = false;
        System.out.println("Luz apagada");
    }

    public void estado(){
        if(encendida){
            String estatus = "encendida";
        System.out.println("La luz de el/la "+ubicacion+" se encuentra "+estatus+" con un porcentaje de brillo de: "+brillo+"%");}
        else{
            System.out.println("La luz de el/la "+ubicacion+" se encuentra apagada. Su porcentaje de brillo es 0% porque esta apagada xD");
        }
    }




}

