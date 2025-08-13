import 'package:canchas_deportivas/inicio_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

    else{
      contrasenaCorrecta = contrasena;
      usuarioCorrecto = correo;
  
      correo1 = nombre;
      telefono1 = telefono;
     _mostrarMensaje('Registro exitoso. Puedes iniciar sesión ahora.');
      _confirmarController.clear();
      _contrasenaController.clear();
      _correoController.clear();
      _telefonoController.clear();
      _nombreController.clear();
    }
  }

  void _mostrarMensaje(String mensaje) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(mensaje), duration: Duration(milliseconds: 950),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                  text: 'REGISTRO',
                  style: Theme.of(context).textTheme.titleLarge)
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
                  icon: Icon(_mostrarPassword ? Icons.visibility : Icons.visibility_off),
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
                  icon: Icon(_mostrarConfirmacion ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _mostrarConfirmacion = !_mostrarConfirmacion;
                    });
                  },
                ),
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: _validarRegistro,
                style: ElevatedButton.styleFrom(
                  
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 2,
                ),
                child: const Text(
                  'REGISTRARSE',
                  
                ),
              ),
              TextButton(
                
              onPressed: () {
              Get.to(LoginPage(), transition: Transition.leftToRight);
               },
                  child: const Text(
                  'Puedes iniciar sesion, AQUI',
                  
  ),
),
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
        prefixIcon: Icon(icono),
        suffixIcon: botonIcono,
        hintText: hint,
        filled: true,
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
