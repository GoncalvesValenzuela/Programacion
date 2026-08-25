public class Consumibles extends Items {
    private int cantidad;

    public Consumibles(String nombre, double peso, String descripcion, String tipo, int cantidad) {
        super(nombre, peso, descripcion, tipo);
        this.cantidad = cantidad;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        super.mostrarItem();
        return "Consumibles{" +
                "cantidad=" + cantidad +
                '}';
    }
}
