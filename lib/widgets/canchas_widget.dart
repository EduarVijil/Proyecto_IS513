import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class CanchasWidget extends StatelessWidget {
  const CanchasWidget({super.key, 
  required this.canchaName, 
  required this.canchaNumero,
  this.canchaImage,
  required this.canchaHorario,
  required this.canchaTamano
    
  });
  final String canchaName;
  final int canchaNumero;
  final Image? canchaImage;
  final String canchaHorario;
  final String? canchaTamano;

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      splashColor: const Color.fromARGB(177, 59, 255, 52).withAlpha(30),
      onTap: () {
        // Handle tap event here
        context.push('/regis1');
      },
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(108, 96, 136, 96),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              canchaTamano![0].toUpperCase(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        canchaName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Text(
                        canchaNumero.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  
                  if (canchaImage != null)
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(15), // Radio de las esquinas
                        child: canchaImage!,
                      ),
                    ),   
                  ),
                  
                  Text(canchaHorario, style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),
            SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}