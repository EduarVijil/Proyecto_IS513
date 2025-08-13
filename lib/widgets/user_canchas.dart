import 'package:get/get.dart';

class Reserva {
  final String cancha;
  final String fecha;
  final String hora;

  Reserva({
    required this.cancha,
    required this.fecha,
    required this.hora,
  });

  @override
  String toString() => 'Cancha: $cancha, Fecha: $fecha, Hora: $hora';
}

class ContadorController extends GetxController {
  RxList<Reserva> historialReservas = <Reserva>[].obs;

  void agregarReserva(String cancha, String fecha, String hora) {
    final nuevaReserva = Reserva(
      cancha: cancha,
      fecha: fecha,
      hora: hora,
    );
    historialReservas.add(nuevaReserva);
    
  }
}