import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Option extends StatefulWidget {
  const Option({
    Key? key,
    this.color,
    required this.option,
    required this.answer,
    required this.answered,
    required this.answeredFn,
  }) : super(key: key);
  final Color? color;
  final String option;
  final String answer;
  final bool answered;
  final void Function(bool) answeredFn;

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  var _isCorrect = false;
  var _initialColor = kOnPrimary3;
  Icon? _icon;
  Color? _iconContainerColor;
  Color? _textColor = kOnPrimary1;

  void onTap() {
    setState(() {
      if (widget.answer == widget.option) {
        _isCorrect = true;
      }
      if (_isCorrect) {
        _initialColor = kSuccess;
        _icon = const Icon(Icons.check, size: 15.0, color: Colors.white);
        _iconContainerColor = _initialColor;
        _textColor = _initialColor;
      } else {
        _initialColor = kFailure;
        _icon = const Icon(Icons.close, size: 15.0, color: Colors.white);
        _iconContainerColor = _initialColor;
        _textColor = _initialColor;
      }
    });
    // ? using a call back to pass 'false' to the parent
    // ? to tell the parent that the question is answered or a choice was made
    widget.answeredFn(true);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.answered ? null : onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        height: 55.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: _initialColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.option,
                style: GoogleFonts.barlow(
                  color: _textColor,
                  fontSize: 16.0,
                ),
              ),
              Container(
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  color: _iconContainerColor,
                  border: Border.all(
                    color: _initialColor,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: _icon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
