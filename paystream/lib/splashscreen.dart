import 'package:flutter/material.dart';
import 'package:paystream/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignInandsignup.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ctacolor,
      body: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width:MediaQuery.of(context).size.width,
                child: Image.asset('assets/others/Pattern.png',fit:BoxFit.fill)
        ),
            Image.asset('assets/logos/rupees.png'),
           const SizedBox(height: 15,),
            Text("PAYSTREAM",style:GoogleFonts.lato(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 24)),
            const SizedBox(height: 200,),

            Center(child: SizedBox(
              width: 252,
              height: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> signinoptions()));
              },
                child:Text("GET STARTED",style:GoogleFonts.lato(fontWeight:FontWeight.w600,fontSize: 24)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(0.6),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)

                )
              ),
              ),
            ))

          ],
        ),

      ),
    );
  }
}
