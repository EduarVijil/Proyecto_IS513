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

 bool existeReserva(String cancha, String fecha, String hora) {
    return historialReservas.any((reserva) =>
        reserva.cancha == cancha &&
        reserva.fecha == fecha &&
        reserva.hora == hora);
 }
    void agregarReserva(String cancha, String fecha, String hora) {
  
    final nuevaReserva = Reserva(
      cancha: cancha,
      fecha: fecha,
      hora: hora,
    );
    historialReservas.add(nuevaReserva);  
  }
}