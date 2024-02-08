import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const SubButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.3,
        margin: EdgeInsets.symmetric(vertical: 35, horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: Text(
          text,
          style: GoogleFonts.nunito(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11), color: Color(0xFF6745FD)),
      ),
    );
  }
}
