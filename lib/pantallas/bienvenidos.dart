import 'package:flutter/material.dart';

class Bienvenidos extends StatelessWidget {
  const Bienvenidos({super.key});

  @override
  Widget build(BuildContext context) {
    const colorBotonAmarillo = Color(0xFFFFD700); 

    return Scaffold(
      body: SafeArea(
        // Agregamos SingleChildScrollView para evitar la barra amarilla de error
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40), // Espacio arriba
                
                // Título y Subtítulo
                const Column(
                  children: [
                    Text("Nuestras Fragancias", 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.indigo)),
                    SizedBox(height: 10),
                    Text("El arte de oler bien", 
                      style: TextStyle(fontSize: 18, color: Colors.brown)),
                  ],
                ),
                
                const SizedBox(height: 50), // Espacio entre texto e imagen

                // Imagen central
                Image.network(
                  'https://raw.githubusercontent.com/damian56667/imagenes/refs/heads/main/logo-removebg-preview.png',
                  height: 250,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 60), // Espacio entre imagen y botones

                // Sección de botones
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/login'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 55),
                        backgroundColor: colorBotonAmarillo,
                        foregroundColor: Colors.black,
                        elevation: 3,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text("INICIAR SESIÓN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                    const SizedBox(height: 20),
                    
                    OutlinedButton(
                      onPressed: () => Navigator.pushNamed(context, '/registro'),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 55),
                        side: const BorderSide(color: colorBotonAmarillo, width: 2),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text("CREAR CUENTA", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Espacio final
              ],
            ),
          ),
        ),
      ),
    );
  }
}