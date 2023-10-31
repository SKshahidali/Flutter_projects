import 'package:flutter/material.dart';
import 'package:music_zone/widgets/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.LoginIcon,
    required this.onpressed,
    });
final IconData LoginIcon;
final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape:BoxShape.circle,
        border: Border.all(width: 2,color: yellow)
      ),
      child: IconButton(
        icon: Icon(LoginIcon,color: yellow,size: 24,),
      onPressed: onpressed,
      ),
    );
  }
}