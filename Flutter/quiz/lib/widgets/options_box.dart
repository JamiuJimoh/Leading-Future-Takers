import 'package:flutter/material.dart';

import 'option.dart';

class OptionsBox extends StatefulWidget {
  const OptionsBox({
    Key? key,
    required this.options,
    required this.answer,
  }) : super(key: key);
  final List<String> options;
  final String answer;

  @override
  State<OptionsBox> createState() => _OptionsBoxState();
}

class _OptionsBoxState extends State<OptionsBox> {
  var _isAnswered = false;
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
                answered: _isAnswered,
                answeredFn: (ans) {
                  setState(() {
                    _isAnswered = ans;
                  });
                },
              ),
              const SizedBox(height: 20.0),
            ],
          ),
      ],
    );
  }
}
