import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

dynamic usuarioCorrecto;
dynamic contrasenaCorrecta;

class _LoginPageState extends State<LoginPage> {
  final _usuarioController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _mostrarPassword = false;


//validaciones
  

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
      context.go('/principal');
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
      backgroundColor: const Color.fromARGB(255, 242, 243, 242),
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
                    color: Color.fromARGB(255, 1, 49, 3),
                  ),
                  children: [
                    const TextSpan(text: 'L'),
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
                    const TextSpan(text: 'GIN'),
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
                  backgroundColor: Colors.grey.shade300,
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 2,
                ),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              
              TextButton(
                
              onPressed: () {
              context.go('/registro');
               },
                  child: const Text(
                  'Puedes registrarte aqui.',
                  style: TextStyle(color: Color.fromARGB(255, 3, 75, 6), fontWeight: FontWeight.w500),
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
