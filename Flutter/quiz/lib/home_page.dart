import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show rootBundle; //? to get only rootBundle
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'question.dart';
import 'widgets/options_box.dart';
import 'widgets/progress_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Question>> getJson() async {
    final rawData = await rootBundle.loadString('assets/trivia.json');
    final data = json.decode(rawData) as List;
    return data.map((e) => Question.fromMap(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(
            top: 60.0, bottom: 5.0, left: 13.0, right: 13.0),
        child: FutureBuilder<List<Question>>(
            future: getJson(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              if (snapshot.hasData) {
                final questions = snapshot.data!;
                return Column(
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
                          ' ${questions.length}',
                          style: GoogleFonts.barlow(
                            color: kOnPrimary2,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    ProgressBar(questionsCount: questions.length),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30.0),
                          Text(
                            questions[0].question,
                            style: GoogleFonts.barlow(
                              color: kOnPrimary1,
                              fontSize: 18.0,
                            ),
                          ),
                          OptionsBox(
                            answer: questions[0].answer,
                            options: questions[0].options,
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
                );
              }
              if (snapshot.hasError) {
                print(snapshot.error);
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
