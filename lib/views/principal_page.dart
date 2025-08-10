import 'package:canchas_deportivas/views/canchas_page.dart';
import 'package:canchas_deportivas/views/perfil_page.dart';
import "package:flutter/material.dart";
//import 'package:go_router/go_router.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key, required this.user});

  final String user;

  @override
  State<PrincipalPage> createState() => _PrincipalPage();
}
class _PrincipalPage extends State<PrincipalPage> {
   
  final pageController = PageController(initialPage: 0);

  int opcion = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar( title:
       //Text("Reserva de canchas")),
      body:PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged:(index){
          setState((){
            opcion= index;  
          }
          );
        } ,
        children:[CanchasPage(), PerfilPage(),]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: opcion,
        onTap: (index) {
          setState(() {
            opcion = index;
            pageController.jumpToPage(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Canchas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),

    );
  }
}