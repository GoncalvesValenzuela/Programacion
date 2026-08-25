package Ejercicio5;

public class Main {
    public static void main(String[] args) {
        try{
            LuzInteligente luzCocina = new LuzInteligente("Cocina",true,100);
            System.out.println("Luz creada con éxito en: "+luzCocina.getUbicacion());

            System.out.println("Brillo actual: "+luzCocina.getBrillo());
            luzCocina.apagar();
            luzCocina.setBrillo(80);
            luzCocina.encender();
            luzCocina.setBrillo(-200);
            luzCocina.setBrillo(40);
            System.out.println("Brillo actual: "+luzCocina.getBrillo());

            luzCocina.estado();
            luzCocina.apagar();
            luzCocina.estado();

        }catch (IllegalArgumentException e){
            System.out.println("No se pudo crear la luz:  "+e.getMessage());
        }


    }
}
