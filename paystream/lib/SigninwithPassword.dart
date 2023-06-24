import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paystream/SignInandsignup.dart';
import 'package:paystream/colors.dart';
import 'package:paystream/createnewaccount.dart';

class passwordsignin extends StatefulWidget {
  const passwordsignin({Key? key}) : super(key: key);

  @override
  State<passwordsignin> createState() => _passwordsigninState();
}

class _passwordsigninState extends State<passwordsignin> {
  bool _obscured = true;
  bool _ischecked = false;
  void _togglepasswordview() {
    setState(() {
      _obscured = !_obscured;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        leading:const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("LOGIN INTO YOUR ACCOUNT",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(height: 60,),
           // <-----> EMAIL TEXTFIELD <-----> //
            Center(
              child: SizedBox(
                height: 50,
                width: 313,
                child: TextField(
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
            ),

            const SizedBox(height: 30,),

            Center(
              child: SizedBox(
                height: 50,
                width: 313,
                child: TextField(
                  obscureText: _obscured,
                  decoration:InputDecoration(
                    label: Text("PASSWORD",style:GoogleFonts.lato(fontSize: 15,fontWeight:FontWeight.w700)),
                    suffixIcon: GestureDetector(
                      onTap: _togglepasswordview,
                        child: Icon(_obscured
                            ?Icons.visibility
                            :Icons.visibility_off
                        )
                    ),
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
            ),

            //<-----> CheckBox <----->//

            CheckboxListTile(
              checkColor: ctacolor,
                title:Text("REMEMBER  ME",style: GoogleFonts.lato(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                value: _ischecked,
                onChanged: (value) {
                  setState(() {
                    _ischecked = value!;
                  });
                },
                controlAffinity:ListTileControlAffinity.leading,
            ),

           const  SizedBox(height: 70,),

            SizedBox(
              height:50,
              width: 313,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("SIGN IN",style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ctacolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),

              ),
            ),

            const SizedBox(height: 20,),
            Text("FORGOT PASSWORD ?",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.w600,color: ctacolor),),
            
            const SizedBox(height: 200,),


            RichText(text:TextSpan(
              children: [
                TextSpan(text:"Dont have an Account ? ", style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black,)),
                TextSpan(text:" SIGN UP NOW",
                    style: GoogleFonts.lato(fontSize: 14,fontWeight: FontWeight.w600,color: ctacolor,),
                    recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> createnewaccountstep1()));
                    }
                ),
              ]
            ))
          ],
        ),
      ),
    );
  }
}
