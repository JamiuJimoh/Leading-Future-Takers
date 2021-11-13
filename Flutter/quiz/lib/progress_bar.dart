import 'package:flutter/material.dart';

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
                _Bar(color: Color(0xFF10C69A)),
                SizedBox(width: 4.0),
              ],
            ),
          ),
        const _Bar(color: Colors.red),
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
            color: color ?? const Color(0xFF40455E),
            borderRadius: const BorderRadius.all(Radius.circular(20.0))),
      ),
    );
  }
}
