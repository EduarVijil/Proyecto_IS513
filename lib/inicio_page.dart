import 'package:canchas_deportivas/registro_page.dart';
import 'package:canchas_deportivas/views/principal_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

dynamic usuarioCorrecto;
dynamic contrasenaCorrecta;
dynamic correo1;
dynamic telefono1;

class _LoginPageState extends State<LoginPage> {
  final _usuarioController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _mostrarPassword = false;

  void validarCampos() {
    String usuario = _usuarioController.text.trim();
    String password = _passwordController.text;

    if (usuario.isEmpty || password.isEmpty) {
      _mostrarMensaje('Todos los campos son necesarios');
      return;
    }

    if (!usuario.contains('@')) {
      _mostrarMensaje('El usuario debe contener "@"');
      return;
    }

    if (password.length <= 6) {
      _mostrarMensaje('La contraseña debe tener más de 6 caracteres');
      return;
    }

    if (usuario != usuarioCorrecto || password != contrasenaCorrecta) {
      _mostrarMensaje('Usuario o contraseña son incorrectos');
      return;
    }

    else{
     _mostrarMensaje('Se ha iniciado sesion correctamente.');
      Get.to(PrincipalPage(), transition: Transition.leftToRight);
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900, 
                    
                  ),
                  children: [
                    TextSpan(text: 'L', style: Theme.of(context).textTheme.titleLarge),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Image.asset(
                          'assets/pelota.png', 
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    TextSpan(text: 'GIN', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              _campoTexto(
                controller: _usuarioController,
                icono: Icons.person,
                hint: 'Correo electrónico',
                oculto: false,
              ),
              const SizedBox(height: 16),

              _campoTexto(
                controller: _passwordController,
                icono: Icons.lock,
                hint: 'Contraseña',
                oculto: !_mostrarPassword,
                botonIcono: IconButton(
                  icon: Icon(
                    _mostrarPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _mostrarPassword = !_mostrarPassword;
                    });
                  },
                ),
              ),
              const SizedBox(height: 30),
              

              ElevatedButton(
                onPressed: validarCampos,
                style: ElevatedButton.styleFrom(
                  
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 2,
                ),
                child: const Text(
                  'LOG IN',
                  
                ),
              ),
              
              TextButton(
                
              onPressed: () {
              Get.to( RegistroPage(), transition: Transition.rightToLeft);
               },
                  child: const Text(
                  'Puedes registrarte aqui.',
                  
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
    Widget? botonIcono,
  }) {
    return TextField(
      controller: controller,
      obscureText: oculto,
      decoration: InputDecoration(
        prefixIcon: Icon(icono),
        suffixIcon: botonIcono,
        hintText: hint,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
