import "package:flutter/material.dart";

class CanchasWidget extends StatelessWidget {
  const CanchasWidget({super.key, 
  required this.canchaName, 
  required this.canchaNumero,
  this.canchaImage,
  required this.canchaHorario
    
  });
  final String canchaName;
  final int canchaNumero;
  final Image? canchaImage;
  
  final String canchaHorario;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.green[50],
      onTap: (){
        

      },
    );
  }
}