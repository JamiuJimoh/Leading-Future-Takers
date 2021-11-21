import 'package:flutter/material.dart';

import 'option.dart';

class OptionsBox extends StatefulWidget {
  OptionsBox({
    Key? key,
    required this.options,
    required this.answer,
    required this.isAnswered,
    required this.isCorrect,
    required this.answeredFn,
    required this.resetOptions,
    required this.resetOptionsFn,
  }) : super(key: key);
  final List<String> options;
  final String answer;
  final void Function(bool) isCorrect;
  final void Function(bool) answeredFn;
  final void Function(bool) resetOptionsFn;
  final bool resetOptions;
  final bool isAnswered;

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
                isAnswered: widget.isAnswered,
                answeredFn: (isAnswered, isCorrect) {
                  widget.answeredFn(isAnswered);
                  widget.isCorrect(isCorrect);
                },
                resetOptions: widget.resetOptions,
                resetOptionsFn: widget.resetOptionsFn,
              ),
              const SizedBox(height: 20.0),
            ],
          ),
      ],
    );
  }
}
