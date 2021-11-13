import 'package:flutter/material.dart';

class ChoiceIndicator extends StatelessWidget {
  const ChoiceIndicator({
    Key? key,
    required this.isChosen,
  }) : super(key: key);
  final bool isChosen;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 20.0,
      decoration: BoxDecoration(
        color: isChosen ? const Color(0xFF20C69A) : null,
        border: Border.all(
          color: isChosen ? const Color(0xFF20C69A) : const Color(0xFF40455E),
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: isChosen
          ? const Icon(Icons.check, size: 15.0, color: Colors.white)
          : null,
    );
  }
}
