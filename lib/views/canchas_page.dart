import "package:canchas_deportivas/views/item_cancha.dart";
import "package:canchas_deportivas/widgets/canchas_widget.dart";
import "package:flutter/material.dart";
import "package:canchas_deportivas/views/registro_cancha.dart"; 

class CanchasPage extends StatelessWidget {
  const CanchasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: emailIncome.length,
      itemBuilder: (BuildContext context, int index) {
        final canchaName = emailIncome[index]['user'];

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => RegisCancha(nombreCancha: canchaName),
              ),
            );
          },
          child: CanchasWidget(
            canchaName: canchaName,
            canchaNumero: index + 1,
            canchaImage: emailIncome[index]['image'] != null
                ? Image.network(emailIncome[index]['image'])
                : null,
            canchaHorario: emailIncome[index]['time'],
            canchaTamano: emailIncome[index]['tamano'] ?? 'medium',
          
       
      },
    );
  }
}
