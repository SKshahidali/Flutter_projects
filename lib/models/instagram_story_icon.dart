import 'package:flutter/material.dart';

class StoryContainer extends StatelessWidget {
  final String ImageURL;
  final String UserName;
  const StoryContainer({required this.ImageURL, required this.UserName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:6.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage(ImageURL),fit: BoxFit.cover),
                color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
            child: Center(
                child: Text(
              UserName,
              style: TextStyle(fontSize: 12, color: Colors.black),
            )),
          )
        ],
      ),
    );
  }
}
