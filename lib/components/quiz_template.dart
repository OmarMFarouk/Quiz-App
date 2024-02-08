import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sub_button.dart';

class QuizTemplate extends StatelessWidget {
  final String questionText;
  final List questionList;
  final List answersList;
  const QuizTemplate({
    super.key,
    required this.questionText,
    required this.questionList,
    required this.answersList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "01/${questionList.length}",
            style: GoogleFonts.nunito(
                color: const Color(0xFF37E9BB), fontWeight: FontWeight.bold),
          ),
          Text(
            "What's the 4th planet in the solar system?",
            style: GoogleFonts.nunito(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            margin: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    "https://images.pond5.com/cartoon-animation-planets-solar-system-footage-054328233_iconl.jpeg",
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Color(0xFF37E9BB),
                borderRadius: BorderRadius.circular(25)),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 12),
                  padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF6745FD)),
                  child: Text(
                    "01",
                    style: GoogleFonts.nunito(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Jupiter",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubButton(text: "Previous", onTap: () {}),
              SubButton(text: "Next", onTap: () {})
            ],
          )
        ],
      ),
    );
  }
}
