import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  final String buttonText;
  final bool mainColor;
  final VoidCallback onTap;
  const MainButton({
    super.key,
    required this.buttonText,
    required this.mainColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: mainColor == false
              ? Border.all(color: const Color(0xFF4F35C5))
              : null,
          borderRadius: BorderRadius.circular(20),
          color: mainColor ? const Color(0xFF6949FE) : Colors.transparent,
        ),
        child: Text(
          buttonText,
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
