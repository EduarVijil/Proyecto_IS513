import 'package:canchas_deportivas/registro_page.dart';
import 'package:canchas_deportivas/views/principal_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'package:go_router/go_router.dart';
import 'package:canchas_deportivas/inicio_page.dart';


final ThemeData personal1 = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Color.fromARGB(255, 53, 67, 70),
    secondary: Color.fromARGB(255, 255, 187, 0),
    surface: Color.fromARGB(255, 255, 255, 255),
    onPrimary: Color.fromARGB(255, 255, 0, 0),
    onSecondary: Color.fromARGB(255, 255, 0, 221),
    onSurface: Color.fromARGB(255, 0, 0, 0),
    
  ),
  
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 29, 163, 47),
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold, 
      color: Color.fromARGB(255, 255, 255, 255),
      
      ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 29, 163, 47),
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),

  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 42, 
      fontWeight: FontWeight.bold, 
      color: Color.fromARGB(255, 29, 163, 47),
      fontFamily: 'times new roman',
      ),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.grey),
  ),


  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Color.fromRGBO(209, 231, 255, 1),
    contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
    hintStyle: TextStyle(color: Colors.white, fontFamily: 'Helvetica', shadows: [
      Shadow(
        color: Color.fromARGB(137, 29, 39, 65),
        offset: Offset(1, 1),
        blurRadius: 2,
      ),
    ]),
    prefixIconColor: Color.fromARGB(255, 29, 163, 47),
    suffixIconColor: Color.fromARGB(255, 29, 163, 47),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color.fromARGB(255, 36, 176, 231)),
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color.fromARGB(255, 36, 176, 231), width: 2),
    ),
  ),

  
);


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

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
      ],
    ),
    );
  }
  

}
