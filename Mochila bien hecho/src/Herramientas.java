public class Herramientas extends Items {
    private double largo;
    private double ancho;

    public Herramientas(String nombre, double peso, String descripcion, String tipo, double largo, double ancho) {
        super(nombre, peso, descripcion, tipo);
        this.largo = largo;
        this.ancho = ancho;
    }

    public double getLargo() {
        return largo;
    }

    public void setLargo(double largo) {
        this.largo = largo;
    }

    public double getAncho() {
        return ancho;
    }

    public void setAncho(double ancho) {
        this.ancho = ancho;
    }

    @Override
    public String toString() {
        super.mostrarItem();
        return "Herramientas{" +
                "largo=" + largo +
                ", ancho=" + ancho +
                '}';
    }
}

