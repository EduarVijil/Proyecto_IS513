import 'package:canchas_deportivas/registro_page.dart';
import 'package:canchas_deportivas/views/principal_page.dart';
import 'package:canchas_deportivas/views/registro_cancha.dart';
import 'package:canchas_deportivas/widgets/elementos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'package:go_router/go_router.dart';
import 'package:canchas_deportivas/inicio_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
    title: 'App Login',
    theme:  personal1,
    debugShowCheckedModeBanner: false,
    routerConfig: GoRouter(
      initialLocation: '/login',
      routes: [
        GoRoute(
          name: 'login',
          path: '/login',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          name: 'registro',
          path: '/registro',
          builder: (context, state) => const RegistroPage(),
        ),
        GoRoute(
          name: 'principal',
          path: '/principal',
          builder: (context, state) => PrincipalPage(user: '',),
          
        ), 
        GoRoute(
          name: 'regis1',
          path: '/regis1',
          builder: (context, state) => RegisCancha(),
          ),
      ],
    ),
    );
  }
  

}
