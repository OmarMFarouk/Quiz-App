import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AnswersTile extends StatelessWidget {
  final bool? isChoosen;
  final String text;
  final int number;
  final bool isCorrect;
  void Function()? onTap;
  AnswersTile({
    super.key,
    required this.isChoosen,
    required this.text,
    required this.number,
    required this.onTap,
    required this.isCorrect,
  });

  check() {
    if (isChoosen == true && isCorrect == true) {
      return Colors.green;
    }
    if (isChoosen == true && isCorrect == false) {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 2),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: check(), borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.all(7),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF6745FD)),
              child: Text(
                "0$number",
                style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              text,
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: isCorrect == true && isChoosen == true
                      ? Colors.black
                      : Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
