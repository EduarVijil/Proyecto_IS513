import 'package:canchas_deportivas/registro_page.dart';
<<<<<<< HEAD
import 'package:canchas_deportivas/views/principal_page.dart';
=======
>>>>>>> 43f5d677e91e7cd555e0ced3166d02f38dcc98d7
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

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
<<<<<<< HEAD
      initialLocation: '/principal',
=======
      initialLocation: '/login',
>>>>>>> 43f5d677e91e7cd555e0ced3166d02f38dcc98d7
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
<<<<<<< HEAD
        GoRoute(
          name: 'principal',
          path: '/principal',
          builder: (context, state) =>  PrincipalPage(user: '',),
          ),       
=======
       
>>>>>>> 43f5d677e91e7cd555e0ced3166d02f38dcc98d7
      ],
    );

    return MaterialApp.router(
      title: 'App Login',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
