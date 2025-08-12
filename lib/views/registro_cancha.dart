import 'package:flutter/material.dart';


class RegisCancha extends StatefulWidget {
  const RegisCancha({super.key});

  @override
  State<RegisCancha> createState() => _RegisCanchaState();


}


class _RegisCanchaState extends State<RegisCancha> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Cancha'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
            Text(
              'Registro de Cancha',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 20),
            
            
            
            
          ],
          
        ),
      ),
    );
  }
  }
  