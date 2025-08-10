import "package:flutter/material.dart";

class CanchasWidget extends StatelessWidget {
  const CanchasWidget({super.key, 
  required this.canchaName, 
  required this.canchaNumero,
  this.canchaImage,
  required this.canchaHorario
    
  });
  final String canchaName;
  final int canchaNumero;
  final Image? canchaImage;
  
  final String canchaHorario;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final oritenation = MediaQuery.of(context).orientation;
    return InkWell(
      splashColor: Colors.blue.withAlpha(30),
      onTap: (){
        

      },
      child: Dismissible(
        // confirmDismiss: (direction) => Future.value(false),
        key: Key(Symbol(canchaName).toString()),

        background: Container(
          color: Colors.blue,
          padding: EdgeInsets.only(left: 12),
          child: Align(
            alignment: Alignment.centerLeft,

            child: Icon(
              Icons.archive_outlined,
              color: Colors.blue[50],
              size: 40,
            ),
          ),
        ),

        secondaryBackground: Container(
          color: Colors.red,
          padding: EdgeInsets.only(right: 12),
          child: Align(
            alignment: Alignment.centerRight,

            child: Icon(
              Icons.delete_outline_outlined,
              color: Colors.red[50],
              size: 40,
            ),
          ),
        ), child: Container(
          constraints: BoxConstraints(
            maxHeight:
                size.height * (oritenation == Orientation.portrait ? 0.1 : 0.2),
          ),
          // color: Colors.green,
          margin: EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red[50],
                radius: 30,
                child: Text(
                  canchaName[0],
                  style: TextStyle(fontSize: 28, color: Colors.red[700]),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      canchaName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      canchaNumero.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(canchaHorario, style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
              ),
              SizedBox(width: 12),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(canchaHorario),
                  SizedBox(height: 8),
                  Icon(Icons.star_border_outlined, color: Colors.grey[600]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}