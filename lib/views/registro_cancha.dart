import 'package:canchas_deportivas/widgets/elementos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisCancha extends StatefulWidget {
  final String nombreCancha;

  const RegisCancha({super.key, required this.nombreCancha});

  @override
  State<RegisCancha> createState() => _RegisCanchaState();
}

class _RegisCanchaState extends State<RegisCancha> {
  DateTime? _fechaSeleccionada;
 final configController = Get.find<ConfigController>();
  List<String> horarios = [
    '11:00 AM', '12:00 PM', '3:00 PM', '6:00 PM',
    '7:00 PM', '9:00 PM', '10:00 AM',
  ];

  Map<String, Set<String>> reservasPorCancha = {};

  @override
  void initState() {
    super.initState();
    reservasPorCancha[widget.nombreCancha] ??= {};
  }

  Future<void> _seleccionarFecha() async {
    final DateTime? seleccion = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30)),
    );

    if (seleccion != null) {
      setState(() {
        _fechaSeleccionada = seleccion;

      });
    }
  }

  void _reservarHorario(String hora) {
    setState(() {
      reservasPorCancha[widget.nombreCancha]!.add(hora);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Se reservó ${widget.nombreCancha} a las $hora'), duration: Duration(milliseconds: 800),),
      
    );
  }

  @override
  Widget build(BuildContext context) {
    final horariosReservados = reservasPorCancha[widget.nombreCancha]!;

    return Scaffold(
      appBar: AppBar(title: Text('Registro - ${widget.nombreCancha}')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            

            ElevatedButton.icon(
              icon: const Icon(Icons.calendar_today),
              label: const Text("Seleccionar fecha"),
              onPressed: _seleccionarFecha,
            ),
            const SizedBox(height: 10),
            Text(
              _fechaSeleccionada != null
                  ? "Fecha: ${_fechaSeleccionada!.toLocal().toString().split(" ")[0]}"
                  : "No se ha seleccionado fecha",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            const Text(
              "Horarios disponibles:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: horarios.length,
                itemBuilder: (context, index) {
                  
                  final hora = horarios[index];
                  final reservado = horariosReservados.contains(hora);

                  
                  return ListTile(
                    title: Text(
                      hora,
                      style: TextStyle(
                        color: reservado ? Colors.grey : Colors.black,
                        decoration: reservado
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    trailing: reservado
                        ? const Text("Reservado", style: TextStyle(color: Colors.red))
                        : ElevatedButton(
                            onPressed: _fechaSeleccionada == null
                                ? null
                                : () => _reservarHorario(hora),
                            child: const Text("Reservar"),
                          ),
                  );
                },
              ),
            ),
          ],
        ),
      
      ),
    );
  }
}
