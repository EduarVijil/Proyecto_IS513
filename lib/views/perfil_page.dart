import "package:canchas_deportivas/inicio_page.dart";
import "package:canchas_deportivas/widgets/elementos.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
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
                        context.go('/login');
                      },
                      
                      child: Text('Cerrar sesión', style: TextStyle(fontSize: 20,),),
                    ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}

