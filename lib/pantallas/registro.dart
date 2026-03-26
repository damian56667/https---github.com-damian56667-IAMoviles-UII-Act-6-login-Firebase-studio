import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    const colorBotonAmarillo = Color(0xFFFFD700);

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Registro", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.indigo)),
            const Text("Únete a Nuestras Fragancias hoy", style: TextStyle(color: Colors.brown)),
            const SizedBox(height: 30),
            
            _campoEntrada("Nombre Completo", Icons.person_outline),
            _campoEntrada("Correo Electrónico", Icons.alternate_email, inputType: TextInputType.emailAddress),
            _campoEntrada("Crear Contraseña", Icons.lock_outline, esPass: true),
            _campoEntrada("Confirmar Contraseña", Icons.check_circle_outline, esPass: true),
            
            const SizedBox(height: 30),
            
            ElevatedButton(
              onPressed: () {
                // --- LÓGICA FUNCIONAL ---
                // 1. Mostramos un mensaje de éxito
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("¡Cuenta creada con éxito! Ya puedes iniciar sesión."),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 2),
                  ),
                );

                // 2. Esperamos un momento y mandamos al Login
                Future.delayed(const Duration(seconds: 1), () {
                  Navigator.pushReplacementNamed(context, '/login');
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
                backgroundColor: colorBotonAmarillo,
                foregroundColor: Colors.black,
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              child: const Text("REGISTRARME", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            
            const SizedBox(height: 25),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                child: const Text("¿Ya tienes cuenta? Inicia Sesión", 
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _campoEntrada(String etiqueta, IconData icono, {bool esPass = false, TextInputType inputType = TextInputType.text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextField(
        obscureText: esPass,
        keyboardType: inputType,
        decoration: InputDecoration(
          labelText: etiqueta,
          prefixIcon: Icon(icono, color: Colors.indigo),
          border: const UnderlineInputBorder(),
        ),
      ),
    );
  }
}