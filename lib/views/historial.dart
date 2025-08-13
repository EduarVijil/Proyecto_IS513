import 'package:canchas_deportivas/widgets/user_canchas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class History extends StatelessWidget {
   History({super.key});
  
  final ContadorController controller = Get.put<ContadorController>(ContadorController());

  @override
  Widget build(BuildContext context) {
      return Scaffold(
    
      body: Obx(() => ListView.builder(
        itemCount: controller.historialReservas.length,
        itemBuilder: (context, index) {
          final reserva = controller.historialReservas[index];
          return ListTile(
            title: Text('Cancha: ${reserva.cancha}'),
            subtitle: Text('Fecha: ${reserva.fecha} - Hora: ${reserva.hora}'),
            trailing: Icon(Icons.sports_soccer),
          );
        },
      )),
    );
  }
}