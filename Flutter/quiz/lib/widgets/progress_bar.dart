import 'package:flutter/material.dart';

import '../constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.questionsCount,
    required this.currIndex,
    required this.isAnswered,
  }) : super(key: key);
  final int questionsCount;
  final int currIndex;
  final bool isAnswered;

  List<Widget> _buildBars() {
    final bars = <Widget>[];
    for (var i = 0; i < questionsCount; i++) {
      if (i == currIndex) {
        bars.add(
          Expanded(
            child: Row(
              children: const [
                _Bar(color: kSuccess),
                SizedBox(width: 4.0),
              ],
            ),
          ),
        );
      } else {
        bars.add(const _Bar(color: Colors.white));
      }
    }
    return bars;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ..._buildBars(),
        // for (var i = 0; i <= 4; i++)
        //   Expanded(
        //     child: Row(
        //       children: const [
        //         _Bar(color: kSuccess),
        //         SizedBox(width: 4.0),
        //       ],
        //     ),
        //   ),
        // const _Bar(color: kFailure),
        // const SizedBox(width: 4.0),
        // const _Bar(color: Colors.white),
        // const SizedBox(width: 4.0),
        // for (var i = 0; i <= 11; i++)
        //   Expanded(
        //     child: Row(
        //       children: const [
        //         _Bar(),
        //         SizedBox(width: 4.0),
        //       ],
        //     ),
        //   ),
        // for (var i = 0; i < questionsCount; i++)
        //   if (i == currIndex)
        //     Expanded(
        //       child: Row(
        //         children: const [
        //           _Bar(color: kSuccess),
        //           SizedBox(width: 4.0),
        //         ],
        //       ),
        //     ),
        //   else
        //   Expanded(
        //       child: Row(
        //         children: const [
        //           _Bar(color: kSuccess),
        //           SizedBox(width: 4.0),
        //         ],
        //       ),
        //     ),
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
