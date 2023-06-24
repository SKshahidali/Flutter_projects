import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:paystream/colors.dart';


class createnewaccountstep1 extends StatefulWidget {
  const createnewaccountstep1({Key? key}) : super(key: key);

  @override
  State<createnewaccountstep1> createState() => _createnewaccountstep1State();
}

class _createnewaccountstep1State extends State<createnewaccountstep1> {

  bool _obscured = true;

  void _togglepasswordview() {
    setState(() {
      _obscured = !_obscured;
    });
  }
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading:const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Text("CREATE NEW ACCOUNT",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 60,),

            SizedBox(
                height: 48,
                width: 313,
                child: TextField(
                  controller:name,
                  decoration:InputDecoration(
                    label: Text("NAME",style:GoogleFonts.lato(fontSize: 15,fontWeight:FontWeight.w700)),
                    fillColor: const Color(0xFFD9D9D9),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20,),

              SizedBox(
                height: 48,
                width: 313,
                child: TextField(
                  controller:email,
                  decoration:InputDecoration(
                    label: Text("EMAIL ADDRESS",style:GoogleFonts.lato(fontSize: 15,fontWeight:FontWeight.w700)),
                    fillColor: const Color(0xFFD9D9D9),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20,),

              SizedBox(
                height: 48,
                width: 313,
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration:InputDecoration(
                    label: Text("PASSWORD",style:GoogleFonts.lato(fontSize: 15,fontWeight:FontWeight.w700)),
                    fillColor: const Color(0xFFD9D9D9),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20,),

              SizedBox(
                height: 48,
                width: 313,
                child: TextField(
                  obscureText: _obscured,
                  decoration:InputDecoration(
                    label: Text("CONFIRM PASSWORD",style:GoogleFonts.lato(fontSize: 15,fontWeight:FontWeight.w700)),
                    fillColor: const Color(0xFFD9D9D9),
                    suffixIcon: GestureDetector(
                        onTap: _togglepasswordview,
                        child: Icon(_obscured
                            ?Icons.visibility
                            :Icons.visibility_off
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),

            const SizedBox(height: 12,),

            RichText(text:TextSpan(
                children: [
                  TextSpan(text:"By Continuing,you agree to our  ", style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black,)),
                  TextSpan(text:" Terms of service",
                      style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w600,color: ctacolor,),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("TERMS OF SERVICE ");
                        }
                  ),
                  TextSpan(text:" and  ", style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black,)),
                  TextSpan(text:" Privacy Policy",
                      style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w600,color: ctacolor,),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("PRIVACY POLICY");
                        }
                  ),
                ]
            )),

            const SizedBox(height: 200,),

            SizedBox(
              height:50,
              width: 313,
              child: ElevatedButton(
                onPressed: () {
                  print(email);
                  print(name);
                  print(password);
                },
                child: Text("SIGN UP",style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: ctacolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),

              ),
            ),
          ],
        ),
      ),
    );

  }
}
