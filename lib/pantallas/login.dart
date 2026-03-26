import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    const colorBotonAmarillo = Color(0xFFFFD700);

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const Text("Ingresar", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.indigo)),
              const Text("Bienvenido de nuevo a tu boutique", style: TextStyle(color: Colors.brown)),
              const SizedBox(height: 40),
              
              const TextField(
                decoration: InputDecoration(
                  labelText: "Correo Electrónico",
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.indigo),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.indigo),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
              ),
              const SizedBox(height: 30),
              
              ElevatedButton(
                onPressed: () {
                  // --- LÓGICA DE LOGIN ---
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("¡Bienvenido a Nuestras Fragancias!"),
                      backgroundColor: Colors.indigo,
                    ),
                  );
                  // Aquí podrías redirigir a una pantalla de catálogo
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 55),
                  backgroundColor: colorBotonAmarillo,
                  foregroundColor: Colors.black,
                  shape: const StadiumBorder(),
                ),
                child: const Text("ENTRAR", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              
              const SizedBox(height: 25),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/registro'),
                child: const Text("¿Eres nuevo? Regístrate aquí", 
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}