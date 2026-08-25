public class Items {
    private String nombre;
    private double peso;
    private String descripcion;
    private String tipo;

    public Items(String nombre, double peso, String descripcion, String tipo) {
        this.nombre = nombre;
        this.peso = peso;
        this.descripcion = descripcion;
        this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void mostrarItem(){
        System.out.println("+++++++++++++++++++++++++++++++++++");
        System.out.println("Nombre: "+ getNombre());
        System.out.println("Peso: "+ getPeso());
        System.out.println("Descripción: "+ getDescripcion());
        System.out.println("Tipo: "+ getTipo());
    }
}
