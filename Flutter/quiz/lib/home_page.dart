import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'widgets/options_box.dart';
import 'widgets/progress_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(
            top: 60.0, bottom: 5.0, left: 13.0, right: 13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Random Quiz',
              style: GoogleFonts.barlow(
                color: kOnPrimary3,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 25.0),
            Row(
              children: [
                Text(
                  'Question 06/',
                  style: GoogleFonts.barlow(
                    color: kOnPrimary1,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '20',
                  style: GoogleFonts.barlow(
                    color: kOnPrimary2,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            const ProgressBar(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30.0),
                  Text(
                    'Who is the G.O.A.T of football?',
                    style: GoogleFonts.barlow(
                      color: kOnPrimary1,
                      fontSize: 18.0,
                    ),
                  ),
                  const OptionsBox(
                    answer: 'Lionel Messi',
                    options: [
                      'Diego Maradona',
                      'Lionel Messi',
                      'Cristiano Ronaldo',
                      'Pele',
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.power_settings_new,
                        size: 18.0,
                        color: kOnPrimary1,
                      ),
                      const SizedBox(width: 7.0),
                      Text(
                        'Quit Quiz',
                        style: GoogleFonts.barlow(
                          color: kOnPrimary1,
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 55.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    primary: kButtonColor,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Next',
                    style: GoogleFonts.barlow(
                      color: kOnPrimary1,
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
