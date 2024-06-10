/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package poli_ap2_calculopromedio;

import java.util.Scanner;
/**
 *
 * @author Harol
 */
public class Poli_ap2_CalculoPromedio {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
         System.out.print("\n Programa para calcular el promedio notas de estudiantes");
         
          System.out.print("\n Presentado por: Harol Hernan Torres Neuta");
        
        Scanner scanner = new Scanner(System.in);

        // Declaración de variables
        int cantidadEstudiantes;

        // Solicitar al usuario la cantidad de estudiantes
        System.out.print("\n Ingrese la cantidad de estudiantes: ");
        cantidadEstudiantes = scanner.nextInt();

        // Solicitar al usuario la materia para calcular el promedio
        System.out.print("Ingrese la materia (matematicas/espanol/ingles): ");
        String materia = scanner.next();

        // Llamar al método correspondiente según la materia ingresada
        switch (materia) {
            case "matematicas":
                calcularPromedioMatematicas(cantidadEstudiantes, scanner);
                break;
            case "espanol":
                calcularPromedioEspanol(cantidadEstudiantes, scanner);
                break;
            case "ingles":
                calcularPromedioIngles(cantidadEstudiantes, scanner);
                break;
            default:
                System.out.println("Materia no válida");
        }

        // Cerrar el scanner
        scanner.close();
    }

    // Método para calcular el promedio de matemáticas utilizando un ciclo for
    public static void calcularPromedioMatematicas(int cantidadEstudiantes, Scanner scanner) {
        double sumaNotas = 0;
        for (int i = 1; i <= cantidadEstudiantes; i++) {
            System.out.print("Ingrese la nota de matemáticas del estudiante " + i + ": ");
            double nota = scanner.nextDouble();
            sumaNotas += nota;
        }
        double promedio = sumaNotas / cantidadEstudiantes;
        System.out.println("El promedio de matemáticas del grupo es: " + promedio);
    }

    // Método para calcular el promedio de español utilizando un ciclo while
    public static void calcularPromedioEspanol(int cantidadEstudiantes, Scanner scanner) {
        double sumaNotas = 0;
        int contador = 0;
        while (contador < cantidadEstudiantes) {
            System.out.print("Ingrese la nota de español del estudiante " + (contador + 1) + ": ");
            double nota = scanner.nextDouble();
            sumaNotas += nota;
            contador++;
        }
        double promedio = sumaNotas / cantidadEstudiantes;
        System.out.println("El promedio de español del grupo es: " + promedio);
    }

    // Método para calcular el promedio de inglés utilizando un ciclo do-while
    public static void calcularPromedioIngles(int cantidadEstudiantes, Scanner scanner) {
        double sumaNotas = 0;
        int contador = 0;
        do {
            System.out.print("Ingrese la nota de inglés del estudiante " + (contador + 1) + ": ");
            double nota = scanner.nextDouble();
            sumaNotas += nota;
            contador++;
        } while (contador < cantidadEstudiantes);
        double promedio = sumaNotas / cantidadEstudiantes;
        System.out.println("El promedio de inglés del grupo es: " + promedio);
    }
    }
    

