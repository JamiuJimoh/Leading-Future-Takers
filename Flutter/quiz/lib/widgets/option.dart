import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Option extends StatefulWidget {
  const Option({
    Key? key,
    required this.option,
    required this.answer,
    required this.isAnswered,
    required this.resetOptions,
    required this.answeredFn,
    required this.resetOptionsFn,
  }) : super(key: key);
  final String option;
  final String answer;
  final bool isAnswered;
  final bool resetOptions;
  final void Function(bool, bool) answeredFn;
  final void Function(bool) resetOptionsFn;

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
    widget.resetOptionsFn(false);
    setState(() {
      if (widget.answer == widget.option) {
        _isCorrect = true;
      } else {
        _isCorrect = false;
      }
      setColor();
    });
    // ? using a call back to pass 'false' to the parent
    // ? to tell the parent that the question is isAnswered or a choice was made
    widget.answeredFn(true, _isCorrect);
  }

  void setColor() {
    if (_isCorrect) {
      _initialColor = kSuccess;
      _icon = const Icon(Icons.check, size: 15.0, color: Colors.white);
      _iconContainerColor = _initialColor;
      _textColor = _initialColor;
    }
    if (!_isCorrect) {
      _initialColor = kFailure;
      _icon = const Icon(Icons.close, size: 15.0, color: Colors.white);
      _iconContainerColor = _initialColor;
      _textColor = _initialColor;
    }
  }

  void resetOptions() {
    _initialColor = kOnPrimary3;
    _icon = null;
    _iconContainerColor = null;
    _textColor = kOnPrimary1;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.resetOptions) {
      resetOptions();
    }

    return GestureDetector(
      onTap: widget.isAnswered ? null : onTap,
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
