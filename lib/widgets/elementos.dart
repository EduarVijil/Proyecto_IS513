import 'package:flutter/material.dart';
import 'package:get/get.dart';

class info extends StatelessWidget {
  const info({super.key, 
    required this.txt,
    required this.icon1,
    
  });
  final String txt;
  final IconData icon1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon1,
              size: 32,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                txt,
                softWrap: true,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
    
  }
}

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
    titleMedium: TextStyle(
      fontSize: 35, 
      fontWeight: FontWeight.bold, 
      color: Color.fromARGB(255, 36, 176, 231),
      fontFamily: 'times new roman',
      ),
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

class txtf extends StatelessWidget {
  const txtf({super.key, 
    required this.txt,
    required this.icon1,
    
  });
  final String txt;
  final IconData icon1;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon1),
        hintText: txt,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class ConfigController extends GetxController {
  var opcionActiva = false.obs;

  void activarOpcion() {
    opcionActiva.value = true;
  }

  void desactivarOpcion() {
    opcionActiva.value = false;
  }
}

