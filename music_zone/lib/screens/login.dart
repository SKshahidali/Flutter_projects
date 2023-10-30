import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:music_zone/widgets/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
 

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool  _passwordvisible = true;
  void showpassword() {
    setState(() {
      _passwordvisible = !_passwordvisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo.png",color:yellow,),

     // <-----> PhoneNumber TextField <-----> //     
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
            child: TextFormField(
                  style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400, color: Colors.white),
              keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
            labelText: "Phone Number",
            labelStyle: TextStyle(color: Colors.yellow),
            prefixIcon: Icon(Icons.phone, color: Colors.yellow),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
                borderRadius: BorderRadius.circular(12)
                ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12)),
                  ),
                ),
          ),

     // <-----> Password TextField <-----> //

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
            child: TextFormField(
                  style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400, color: Colors.white),
              keyboardType: TextInputType.text,
              obscureText:_passwordvisible,
                  decoration: InputDecoration(
            labelText: "Password",
            labelStyle: TextStyle(color: Colors.yellow),
            prefixIcon: Icon(Icons.lock, color: Colors.yellow),
            suffixIcon: GestureDetector(
              onTap: () {
                showpassword();
              },
              child: Icon(Icons.remove_red_eye,color: Colors.white,)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
                borderRadius: BorderRadius.circular(12)
                ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12)),
                  ),
                ),
          ),
              const SizedBox(height: 30,),
          // <-----> Login Button <-----> //

        SizedBox(
          width:MediaQuery.of(context).size.width * (0.5),
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
            onPressed: (){},
             child:Text("Sign In",style:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)))
        ],
      ),
    );
  }
}