import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            title: Text(
              "Flutter_Devote",
              style: GoogleFonts.poppins(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )),
      body: Stack(
        children: [
          Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Lottie.asset('assets/lottie/fireworks.json',
                    fit: BoxFit.cover),
              )),
          Center(
            child: Lottie.asset('assets/lottie/diwali.json',
                width: 370, height: 370),
          )
        ],
      ),
    );
  }
}
