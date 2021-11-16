import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 55.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        primary: kButtonColor,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: GoogleFonts.barlow(
          color: kOnPrimary1,
          fontSize: 17.0,
        ),
      ),
    );
  }
}
