import 'package:flutter/material.dart';

import 'constants.dart';

class NeumoContainer extends StatefulWidget {
  NeumoContainer(
      {this.darkMode = false,
      required this.child,
      required this.borderRadius,
      required this.padding});
  final bool darkMode;
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  State<NeumoContainer> createState() => _NeumoContainerState();
}

class _NeumoContainerState extends State<NeumoContainer> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool darkMode = widget.darkMode;
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
          color: darkMode ? colorDark : colorLight,
          borderRadius: widget.borderRadius,
          boxShadow: _isPressed
              ? null
              : [
                  BoxShadow(
                    color: darkMode ? Colors.black54 : Colors.blueGrey.shade200,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: darkMode ? Colors.blueGrey.shade700 : Colors.white,
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ],
        ),
        child: widget.child,
      ),
    );
  }
}
