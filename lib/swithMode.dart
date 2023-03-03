import 'package:flutter/material.dart';

import 'neumo_container.dart';

class switchMode extends StatelessWidget {
  switchMode({required this.darkMode});
  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return NeumoContainer(
      darkMode: darkMode,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.wb_sunny,
              color: darkMode ? Colors.grey : Color(0xFFFEDC00),
            ),
            Icon(
              Icons.nightlight_round,
              color: darkMode ? Colors.yellow.shade200 : Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
