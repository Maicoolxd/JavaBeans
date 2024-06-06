package web;
/*
Autor: Michael Guamán
fecha: 05/06/2024
Descripcion: esta clase permite obtener los datos de la base y la altura
utilizando metodos gett y sett
 */
public class Rectangulo {
    // Calcular el área de un web.rectangulo
    // Declaramos las variables y encapsulamos
    private double base;
    private double altura;

    // Creamos el primer constructor, siempre debe estar vacío
    public Rectangulo() {}

    public Rectangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;
    }

    // Métodos get and set
    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public double getBase() {
        return base;
    }

    public void setBase(double base) {
        this.base = base;
    }

    // Generar un método que calcule el área
    public double getArea() {
        return this.base * this.altura;
    }
}
