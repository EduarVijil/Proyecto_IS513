import 'package:flutter/material.dart';

class info extends StatelessWidget {
  const info({
    required this.txt,
    required this.icon1,
    
  });
  final String txt;
  final IconData icon1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon1,
              size: 32,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                txt,
                softWrap: true,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
    
  }
}

