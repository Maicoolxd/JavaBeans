public class Rectangulo {
    //declaramos nuestras variables y encapsulamos
    private int base;
    private int altura;

    //creamos el constructo vacio
    public Rectangulo(){

    }
    //
    public Rectangulo(int base, int altura){
        this.base=base;
        this.altura=altura;
    }
    //metodos gett and sett


    public int getBase() {
        return base;
    }

    public void setBase(int base) {
        this.base = base;
    }

    public int getAltura() {
        return altura;
    }

    public void setAltura(int altura) {
        this.altura = altura;
    }
    

}

