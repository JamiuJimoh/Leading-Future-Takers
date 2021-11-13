import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz/choice_indicator.dart';

class OptionsBox extends StatelessWidget {
  const OptionsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        _Options(option: 'Diego Maradona'),
        SizedBox(height: 20.0),
        _Options(option: 'Lionel Messi', isChosen: true),
        SizedBox(height: 20.0),
        _Options(option: 'Cristiano Ronaldo'),
        SizedBox(height: 20.0),
        _Options(option: 'Pele'),
      ],
    );
  }
}

class _Options extends StatelessWidget {
  const _Options({
    Key? key,
    this.color,
    required this.option,
    this.isChosen = false,
  }) : super(key: key);
  final Color? color;
  final String option;
  final bool isChosen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      height: 55.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: isChosen ? const Color(0xFF20C69A) : const Color(0xFF40455E),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option,
              style: GoogleFonts.barlow(
                color: isChosen ? const Color(0xFF20C69A) : Colors.white70,
                fontSize: 16.0,
              ),
            ),
            ChoiceIndicator(isChosen: isChosen)
          ],
        ),
      ),
    );
  }
}
