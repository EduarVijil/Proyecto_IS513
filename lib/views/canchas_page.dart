import "package:canchas_deportivas/views/item_cancha.dart";
import "package:canchas_deportivas/widgets/canchas_widget.dart";
import "package:flutter/material.dart";

class CanchasPage extends StatelessWidget {
  const CanchasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: emailIncome.length, // Example item count
      itemBuilder: (BuildContext context, int index) {
        return CanchasWidget(
          canchaName: emailIncome[index]['user'],
          canchaNumero: index + 1,
          canchaImage: null, // Placeholder for image, can be replaced with an actual image widget
          canchaHorario: emailIncome[index]['time'],
        );
      },
    );
        
  }
}