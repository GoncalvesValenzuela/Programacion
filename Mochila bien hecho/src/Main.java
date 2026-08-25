
public class Main {
    public static void main(String[] args) {
        Consumibles consumible1 = new Consumibles("Vendaje",0.1,"Cura 15 HP","Consumible",10);
        Consumibles consumible2 = new Consumibles("Poción de Mana",0.2, "Recupera 10 puntos de mana", "Consumible",5);

        Herramientas herramienta1 = new Herramientas("Pala",3.5,"Permite excavar","Herramienta",10,5);
        Herramientas herramienta2 = new Herramientas("Picota",3.5,"Permite extraer minerales","Herramienta",10,5);

        consumible1.mostrarItem();
        consumible2.mostrarItem();

        herramienta1.mostrarItem();
        herramienta2.mostrarItem();


    }
}