import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paystream/SigninwithPassword.dart';
import 'package:paystream/colors.dart';

class signinoptions extends StatefulWidget {
  const signinoptions({Key? key}) : super(key: key);

  @override
  State<signinoptions> createState() => _signinoptionsState();
}

class _signinoptionsState extends State<signinoptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Image.asset('assets/others/welcome.png'),
              const SizedBox(height: 10,),
              Text("UNLOCK YOUR FINANCES !!",style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700),),
              const SizedBox(height: 30,),

              //<-----> Continue With Google <---->

              SizedBox(
                height: 50,
                width: 284,
                child: ElevatedButton.icon(onPressed: () {}, icon:Image.asset('assets/logos/google.png',height: 36,width: 36,), label: Text("CONTINUE WITH GOOGLE",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.w700)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.6),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
                ),
              ),
                  const SizedBox(height: 19,),

              //<----->Continue with Apple<----->//

              SizedBox(
                height: 50,
                width: 284,
                child: ElevatedButton.icon(onPressed: () {}, icon:Image.asset('assets/logos/apple.png',height: 36,width: 36,), label: Text("CONTINUE WITH APPLE",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.6),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Text("OR",style: GoogleFonts.lato(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
              const SizedBox(height: 16,),
              SizedBox(
                height: 50,
                width: 284,
                child: ElevatedButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> passwordsignin()));
                },child: Text("SIGN IN USING PASSWORD",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor:ctacolor,
                      foregroundColor: Colors.white,
                      shadowColor: Color(0xFF5538EE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                ),
              ),
              const SizedBox(height: 10,),

              Text("SIGN UP INSTEAD",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.w700,color: ctacolor)),
            ],
          ),
        )
      ),
    );
  }
}
