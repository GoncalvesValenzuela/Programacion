package Ejercicio2;

public class Termostato {
    private double temperatura;

    public Termostato(double temperatura) {
        this.temperatura = temperatura;
    }

    public double getTemperatura() {
        return temperatura;
    }

    public void setTemperatura(double temperatura) {
        if (temperatura >= 10 && temperatura <= 30) {
            this.temperatura = temperatura;
        }
        else {
            System.out.println("Temperatura inválida");
        }
    }
}
