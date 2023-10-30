import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_zone/widgets/slider.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff232121),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.network('https://lottie.host/d16eb7e6-166d-4bb1-8dd1-da5ad29211b8/uSBKjACFld.json'),
          Text("MUSIC ZONE",style:GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white) ,),
          Text("DIVE INTO THE WORLD OF IMMENSE TUNES",style:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.white) ,),
          Expanded(child: Container()),
          SliderButton(),

        ],
      ),
    );
  }
}