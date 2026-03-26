import 'package:flutter/material.dart';
import 'pantallas/bienvenidos.dart';
import 'pantallas/login.dart';
import 'pantallas/registro.dart';

void main() {
  runApp(const NuestrasFraganciasApp());
}

class NuestrasFraganciasApp extends StatelessWidget {
  const NuestrasFraganciasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 1. Quita la franja de "Debug" de la esquina
      debugShowCheckedModeBanner: false, 
      title: 'Nuestras Fragancias',
      
      theme: ThemeData(
        useMaterial3: true,
        // Color de fondo crema suave para toda la app
        scaffoldBackgroundColor: const Color(0xFFFFF9E3), 
        
        // Definimos la paleta de colores global
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          primary: Colors.indigo, // Color para textos principales e iconos
          secondary: const Color(0xFFFFD700), // Dorado/Amarillo para botones
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Bienvenidos(),
        '/login': (context) => const Login(),
        '/registro': (context) => const Registro(),
      },
    );
  }
}