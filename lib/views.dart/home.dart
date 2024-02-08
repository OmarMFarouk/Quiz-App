import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlets/models/quiz_model.dart';
import 'package:quizlets/src/app_navigator.dart';
import 'package:quizlets/views.dart/quiz2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  checker(int index) {
    switch (levelsResults[index + 1]) {
      case {1: 0}:
        return Colors.grey;
      case {1: 1}:
        return Colors.yellow.shade200;
      case {1: 2}:
        return Colors.yellow.shade400;
      case {1: 3}:
        return Colors.yellow.shade700;
      case {2: 0}:
        return Colors.grey;
      case {2: 1}:
        return Colors.yellow.shade200;
      case {2: 2}:
        return Colors.yellow.shade400;
      case {2: 3}:
        return Colors.yellow.shade700;
      case {3: 0}:
        return Colors.grey;
      case {3: 1}:
        return Colors.yellow.shade200;
      case {3: 2}:
        return Colors.yellow.shade400;
      case {3: 3}:
        return Colors.yellow.shade700;
      case {4: 0}:
        return Colors.grey;
      case {4: 1}:
        return Colors.yellow.shade200;
      case {4: 2}:
        return Colors.yellow.shade400;
      case {4: 3}:
        return Colors.yellow.shade700;
      case {5: 0}:
        return Colors.grey;
      case {5: 1}:
        return Colors.yellow.shade200;
      case {5: 2}:
        return Colors.yellow.shade400;
      case {5: 3}:
        return Colors.yellow.shade700;
      default:
        null;
    }
  }

  @override
  void initState() {
    checker(4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Levels",
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
      body: GridView.builder(
        itemCount: 5,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Stack(alignment: Alignment.center, children: [
            Positioned(
                top: 1,
                child: Icon(Icons.star, size: 30, color: checker(index))),
            Positioned(
                top: 18,
                right: 35,
                child: Icon(Icons.star, size: 30, color: checker(index))),
            Positioned(
                top: 18,
                left: 35,
                child: Icon(Icons.star, size: 30, color: checker(index))),
            GestureDetector(
              child: Image.asset("images/level_${index + 1}.png"),
              onTap: () {
                AppNavigator(
                    context: context,
                    destination: QuizPage(
                      levelNumber: index + 1,
                    )).pushR();
              },
            )
          ]);
        },
      ),
    );
  }
}
