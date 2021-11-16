import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show rootBundle; //? to get only rootBundle
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/result_page.dart';

import 'constants.dart';
import 'question.dart';
import 'widgets/blue_button.dart';
import 'widgets/options_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  var _scoreCount = 0;
  //! We need the score count in the result page(it was pushed on the route stack)
  //! The OptionsBox updates the score
  //! So we need to keep track of the score in this widget and communicate with the score with a callback

  Future<List<Question>> getJson() async {
    final rawData = await rootBundle.loadString('assets/trivia.json');
    final data = json.decode(rawData) as List;
    return data.map((e) => Question.fromMap(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          'Question ${_currentIndex + 1}/',
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
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30.0),
                          Text(
                            questions[_currentIndex].question,
                            style: GoogleFonts.barlow(
                              color: kOnPrimary1,
                              fontSize: 18.0,
                            ),
                          ),
                          OptionsBox(
                            isAnswered: questions[_currentIndex].isAnswered,
                            answer: questions[_currentIndex].answer,
                            options: questions[_currentIndex].options,
                            isCorrect: (isCorrect) {
                              if (isCorrect) {
                                _scoreCount++;
                              }
                            },
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
                        BlueButton(
                          label: 'Next',
                          onPressed: () {
                            if (_currentIndex < questions.length - 1) {
                              setState(() {
                                _currentIndex += 1;
                              });
                            } else if (_currentIndex == questions.length - 1) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => ResultPage(
                                    questionCount: questions.length,
                                    scoreCount: _scoreCount,
                                    reset: () {
                                      setState(() {
                                        _currentIndex = 0;
                                        _scoreCount = 0;
                                      });
                                    },
                                  ),
                                ),
                              );
                            }
                          },
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
