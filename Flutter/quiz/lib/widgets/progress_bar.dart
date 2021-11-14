import 'package:flutter/material.dart';

import '../constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var i = 0; i <= 4; i++)
          Expanded(
            child: Row(
              children: const [
                _Bar(color: kSuccess),
                SizedBox(width: 4.0),
              ],
            ),
          ),
        const _Bar(color: kFailure),
        const SizedBox(width: 4.0),
        const _Bar(color: Colors.white),
        const SizedBox(width: 4.0),
        for (var i = 0; i <= 11; i++)
          Expanded(
            child: Row(
              children: const [
                _Bar(),
                SizedBox(width: 4.0),
              ],
            ),
          ),
      ],
    );
  }
}

class _Bar extends StatelessWidget {
  const _Bar({
    Key? key,
    this.color,
  }) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        height: 2.0,
        decoration: BoxDecoration(
          color: color ?? kOnPrimary3,
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
