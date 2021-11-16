import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz/widgets/blue_button.dart';

import 'constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    required this.reset,
    required this.scoreCount,
    required this.questionCount,
  }) : super(key: key);
  final VoidCallback reset;
  final int scoreCount;
  final int questionCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40.0),
            Text(
              'Quiz Result',
              style: GoogleFonts.barlow(
                color: kOnPrimary1,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 50.0),
            SizedBox(
              width: double.infinity,
              height: 220.0,
              child: Image.asset(
                scoreCount > (questionCount / 2)
                    ? 'assets/images/trophy.png'
                    : 'assets/images/loser.png',
              ),
            ),
            const SizedBox(height: 40.0),
            Expanded(
              child: Column(
                children: [
                  Text(
                    scoreCount > (questionCount / 2)
                        ? 'Congratulations!'
                        : 'Oops try again',
                    style: GoogleFonts.barlow(
                      color: kOnPrimary1,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Curabitur aliquet quam id dui posuere blandit. Nulla porttitor accumsan tincidunt.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.barlow(
                      color: kOnPrimary1,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Text(
                    'YOUR SCORE',
                    style: GoogleFonts.barlow(
                      color: kOnPrimary1,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 2.8,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$scoreCount',
                        // textAlign: TextAlign.center,
                        style: GoogleFonts.barlow(
                          color: kSuccess,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // const SizedBox(width: 5.0),
                      const SizedBox(height: 40.0),
                      Text(
                        ' / $questionCount',
                        style: GoogleFonts.barlow(
                          color: kOnPrimary1,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            BlueButton(
                label: 'Restart',
                onPressed: () {
                  reset();
                  Navigator.of(context).pop();
                }),
          ],
        ),
      ),
    );
  }
}
