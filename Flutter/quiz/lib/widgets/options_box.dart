import 'package:flutter/material.dart';

import 'option.dart';

class OptionsBox extends StatefulWidget {
  OptionsBox({
    Key? key,
    required this.options,
    required this.answer,
    required this.isAnswered,
    required this.isCorrect,
  }) : super(key: key);
  final List<String> options;
  final String answer;
  //? we'll sort this issue of mutable fields in a stateful widget with State management
  bool isAnswered;
  final void Function(bool) isCorrect;

  @override
  State<OptionsBox> createState() => _OptionsBoxState();
}

class _OptionsBoxState extends State<OptionsBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var option in widget.options)
          Column(
            children: [
              Option(
                option: option,
                answer: widget.answer,
                answered: widget.isAnswered,
                answeredFn: (ans, isCorrect) {
                  setState(() {
                    widget.isAnswered = ans;
                  });
                  widget.isCorrect(isCorrect);
                },
              ),
              const SizedBox(height: 20.0),
            ],
          ),
      ],
    );
  }
}
