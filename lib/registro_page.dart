import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({super.key});

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  final _nombreController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _correoController = TextEditingController();
  final _contrasenaController = TextEditingController();
  final _confirmarController = TextEditingController();

  bool _mostrarPassword = false;
  bool _mostrarConfirmacion = false;
<<<<<<< HEAD
=======
  
  //validaciones

  void _validarRegistro() {
    final nombre = _nombreController.text.trim();
    final telefono = _telefonoController.text.trim();
    final correo = _correoController.text.trim();
    final contrasena = _contrasenaController.text;
    final confirmar = _confirmarController.text;

    if (nombre.isEmpty ||
        telefono.isEmpty ||
        correo.isEmpty ||
        contrasena.isEmpty ||
        confirmar.isEmpty) {
      _mostrarMensaje('Debes llenar todos los campos');
      return;
    }

    if (!correo.contains('@')) {
      _mostrarMensaje('El correo debe contener "@"');
      return;
    }

    if (!RegExp(r'^\d{8}$').hasMatch(telefono)) {
      _mostrarMensaje('El teléfono debe tener exactamente 8 dígitos numéricos');
      return;
    }

    if (contrasena.length <= 6) {
      _mostrarMensaje('La contraseña debe tener más de 6 caracteres');
      return;
    }

    if (contrasena != confirmar) {
      _mostrarMensaje('Las contraseñas no son iguales');
      return;
    }

    _mostrarMensaje('Registro exitoso');
  }

  void _mostrarMensaje(String mensaje) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(mensaje)),
    );
  }
>>>>>>> 43f5d677e91e7cd555e0ced3166d02f38dcc98d7

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
<<<<<<< HEAD
              RichText(
                text: const TextSpan(
                  text: 'REGISTRO',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 49, 3),
                  ),
=======
              const Text(
                'REGISTRO',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 49, 3),
>>>>>>> 43f5d677e91e7cd555e0ced3166d02f38dcc98d7
                ),
              ),
              const SizedBox(height: 30),

              _campoTexto(
                controller: _nombreController,
                icono: Icons.person,
                hint: 'Nombre completo',
                oculto: false,
              ),
              const SizedBox(height: 16),

              _campoTexto(
                controller: _telefonoController,
                icono: Icons.phone,
                hint: 'Teléfono',
                oculto: false,
                tipoTeclado: TextInputType.phone,
              ),
              const SizedBox(height: 16),

              _campoTexto(
                controller: _correoController,
                icono: Icons.email,
                hint: 'Correo electrónico',
                oculto: false,
                tipoTeclado: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),

              _campoTexto(
                controller: _contrasenaController,
                icono: Icons.lock,
                hint: 'Contraseña',
                oculto: !_mostrarPassword,
                botonIcono: IconButton(
<<<<<<< HEAD
                  icon: Icon(_mostrarPassword ? Icons.visibility : Icons.visibility_off),
=======
                  icon: Icon(
                      _mostrarPassword ? Icons.visibility : Icons.visibility_off),
>>>>>>> 43f5d677e91e7cd555e0ced3166d02f38dcc98d7
                  onPressed: () {
                    setState(() {
                      _mostrarPassword = !_mostrarPassword;
                    });
                  },
                ),
              ),
              const SizedBox(height: 16),

              _campoTexto(
                controller: _confirmarController,
                icono: Icons.lock_outline,
                hint: 'Confirmar contraseña',
                oculto: !_mostrarConfirmacion,
                botonIcono: IconButton(
<<<<<<< HEAD
                  icon: Icon(_mostrarConfirmacion ? Icons.visibility : Icons.visibility_off),
=======
                  icon: Icon(_mostrarConfirmacion
                      ? Icons.visibility
                      : Icons.visibility_off),
>>>>>>> 43f5d677e91e7cd555e0ced3166d02f38dcc98d7
                  onPressed: () {
                    setState(() {
                      _mostrarConfirmacion = !_mostrarConfirmacion;
                    });
                  },
                ),
              ),
              const SizedBox(height: 30),

              ElevatedButton(
<<<<<<< HEAD
                onPressed: () {
                
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
=======
                onPressed: _validarRegistro,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
>>>>>>> 43f5d677e91e7cd555e0ced3166d02f38dcc98d7
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 2,
                ),
                child: const Text(
                  'REGISTRARSE',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
<<<<<<< HEAD
                
              onPressed: () {
              context.go('/login');
               },
                  child: const Text(
                  'Puedes iniciar sesion, AQUI',
                  style: TextStyle(color: Color.fromARGB(255, 3, 75, 6), fontWeight: FontWeight.w500),
  ),
),
=======
                onPressed: () {
                  context.go('/login');
                },
                child: const Text(
                  'Puedes iniciar sesión, AQUI',
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 75, 6),
                      fontWeight: FontWeight.w500),
                ),
              ),
>>>>>>> 43f5d677e91e7cd555e0ced3166d02f38dcc98d7
            ],
          ),
        ),
      ),
    );
  }

  Widget _campoTexto({
    required TextEditingController controller,
    required IconData icono,
    required String hint,
    required bool oculto,
    TextInputType tipoTeclado = TextInputType.text,
    Widget? botonIcono,
  }) {
    return TextField(
      controller: controller,
      obscureText: oculto,
      keyboardType: tipoTeclado,
      decoration: InputDecoration(
        prefixIcon: Icon(icono, color: Colors.black),
        suffixIcon: botonIcono,
        hintText: hint,
        filled: true,
        fillColor: Colors.green.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
