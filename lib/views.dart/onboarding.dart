import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizlets/src/app_navigator.dart';
import 'package:quizlets/views.dart/home.dart';

import '../components/main_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1147),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 35),
            alignment:
                Alignment.lerp(Alignment.bottomCenter, Alignment.center, 0.01),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: const Color(0xFF2A175B),
                image: const DecorationImage(
                  image: AssetImage(
                    "images/logo.PNG",
                  ),
                  scale: 0.7,
                )),
            child: Text(
              "Quizzles",
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: const Color(0xFF37E9BB)),
            ),
          ),
          Column(
            children: [
              Text(
                "Let's Play!",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
              Text(
                "Play now and Level up",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Column(
            children: [
              MainButton(
                  buttonText: "Play Now",
                  mainColor: true,
                  onTap: () {
                    AppNavigator(context: context, destination: HomePage())
                        .push();
                  }),
              MainButton(
                onTap: () {},
                buttonText: "About",
                mainColor: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
