import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlets/components/answer_tile.dart';
import 'package:quizlets/models/quiz_model.dart';
import 'package:quizlets/src/app_navigator.dart';
import 'package:quizlets/views.dart/result.dart';

import '../components/sub_button.dart';

// ignore: must_be_immutable
class QuizPage extends StatefulWidget {
  QuizPage({super.key, required this.levelNumber});
  int levelNumber;
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: const Color(0xFF1F1147),
        body: PageView(
          children: [
            QuizTemplate(
              levelNumber: widget.levelNumber,
            )
          ],
        ));
  }
}

class QuizTemplate extends StatefulWidget {
  final int levelNumber;
  const QuizTemplate({
    super.key,
    required this.levelNumber,
  });

  @override
  State<QuizTemplate> createState() => _QuizTemplateState();
}

PageController pageController = PageController(initialPage: 0);
bool isTapped = false;
int sum = 0;
int currentIndex = 1;

class _QuizTemplateState extends State<QuizTemplate> {
  @override
  void initState() {
    isTapped = false;
    sum = 0;
    currentIndex = 1;
    super.initState();
    check();
    pageController = PageController(initialPage: 0);
  }

  check() {
    return currentIndex < checker().length ? "Next" : "Finish";
  }

  checker() {
    switch (widget.levelNumber) {
      case 1:
        return quizData;
      case 2:
        return level2QuizData;
      case 3:
        return level3QuizData;
      case 4:
        return level4QuizData;
      case 5:
        return level5QuizData;
      default:
        null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: NeverScrollableScrollPhysics(),
      controller: pageController,
      itemCount: checker().length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${index + 1}".padLeft(2, "0") +
                    "/" +
                    "${checker().length}".padLeft(2, "0"),
                style: GoogleFonts.nunito(
                    color: const Color(0xFF37E9BB),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                checker()[index].questions,
                style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        checker()[index].path,
                      ),
                    )),
              ),
              ListView(shrinkWrap: true, children: [
                for (int i = 0; i < checker()[index].answers.length; i++)
                  AnswersTile(
                      isChoosen: isTapped,
                      text: "${checker()[index].answers.keys.toList()[i]}",
                      number: i + 1,
                      onTap: isTapped == false
                          ? () {
                              setState(
                                () {
                                  isTapped = true;
                                  if (checker()[index]
                                          .answers
                                          .values
                                          .toList()[i] ==
                                      true) {
                                    sum += 10;
                                  }

                                  print(checker()[index]
                                          .answers
                                          .keys
                                          .toList()[i]
                                          .toString() +
                                      " is tapped");
                                  print(sum);
                                },
                              );
                            }
                          : null,
                      isCorrect: checker()[index].answers.values.toList()[i])
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SubButton(
                      text: "Previous",
                      onTap: () {
                        pageController.jumpToPage(index - 1);
                        setState(() {
                          currentIndex >= 3 ? currentIndex = 1 : null;
                          print(currentIndex);
                        });
                      }),
                  SubButton(
                      text: check(),
                      onTap: currentIndex >= checker().length
                          ? () {
                              AppNavigator(
                                      destination: ResultsPage(
                                        result: sum,
                                        levelNumber: widget.levelNumber,
                                      ),
                                      context: context)
                                  .push();
                            }
                          : () {
                              pageController.jumpToPage(index + 1);
                              setState(() {
                                isTapped = false;
                                currentIndex < 3 ? currentIndex += 1 : null;
                                print(currentIndex);
                              });
                            })
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
