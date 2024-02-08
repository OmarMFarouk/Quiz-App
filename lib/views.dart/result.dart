import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlets/components/main_button.dart';
import 'package:quizlets/models/quiz_model.dart';
import 'package:quizlets/src/app_navigator.dart';
import 'package:quizlets/views.dart/home.dart';
import 'package:quizlets/views.dart/quiz2.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage(
      {super.key, required this.result, required this.levelNumber});
  final int result;
  final int levelNumber;

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  void initState() {
    levelsResults.insert(widget.levelNumber, {widget.levelNumber: sum ~/ 10});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1147),
      appBar: AppBar(
        title: Text(
          "Level ${widget.levelNumber}",
          style: GoogleFonts.nunito(
              color: const Color(0xFF37E9BB), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total correct Answers",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${sum ~/ 10}" +
                      "\tout of\t" +
                      "${quizData.length}" +
                      "\tQuestions",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color(0xFF37E9BB)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "\nYour Final Score Is",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "$sum",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                      transform: GradientRotation(190),
                      colors: [
                        Color(0xFF654ED2),
                        Color.fromARGB(155, 68, 52, 141)
                      ]),
                  image: DecorationImage(
                      image: AssetImage(
                        "images/celebration.PNG",
                      ),
                      fit: BoxFit.contain)),
            ),
            MainButton(
                buttonText: "Try Again",
                mainColor: true,
                onTap: () {
                  AppNavigator(context: context, destination: const HomePage())
                      .pushR();
                  print(levelsResults);
                })
          ],
        ),
      ),
    );
  }
}
