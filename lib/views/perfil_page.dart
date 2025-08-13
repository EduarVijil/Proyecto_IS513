
import "package:canchas_deportivas/inicio_page.dart";
import "package:canchas_deportivas/widgets/elementos.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class PerfilPage extends StatelessWidget {
   const PerfilPage({super.key});
  final bool reserva = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [ 
            SizedBox(height: 20),
            Column(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Padding(
                  padding: EdgeInsets.all(25),
                  
                  child: Column(
                    children: [
                      info(txt: correo1, icon1: Icons.person),
                      info(txt: usuarioCorrecto, icon1: Icons.email,),
                      info(txt: telefono1, icon1: Icons.phone,),
                    
                    ],
                  ),
                ),
                SizedBox(height: 60),
               ElevatedButton(
                        onPressed: () {
                          Get.to(LoginPage(), transition: Transition.leftToRight);
                        },
                        
                        child: Text('Cerrar sesión', style: TextStyle(fontSize: 20,),),
                      ),
              ],
            
            ),
            Column(
                
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 250),
                Text( 'Canchas registradas', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
                SizedBox(height: 10),
                
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}

Widget reservacion (bool reserva) {
  if(reserva == true){
    Get.snackbar('Reservado', 'La cancha ya ha sido reservada');
  } else{
    Get.snackbar('Disponible', 'La cancha está disponible para reservar');
  }
  return SizedBox.shrink();
}

