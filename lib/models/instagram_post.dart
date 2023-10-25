import 'package:flutter/material.dart';

class PostContainer extends StatefulWidget {
  String profileImageURL;
  String username;
  String PostImage;
  String Postcaption;
  String hashtags;

  PostContainer({
      required this.profileImageURL,
      required this.username,
      required this.PostImage,
      required this.Postcaption,
      required this.hashtags
      });

  @override
  State<PostContainer> createState() => _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {
  bool Likestate = false;
  bool bookmarkstate = false; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Profile Image  + username//
              Row(
                children: [
                    Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(widget.profileImageURL),fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 15,),
              Text(widget.username,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:14),),
                ],
              ),
              //Three Dots //
              const Icon(Icons.more_vert),
            ],
          ),
        ),

        //Instagram Post  //
        Container(
          height:300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(image: NetworkImage(widget.PostImage),fit: BoxFit.cover)
          ),
        ),

        //Like,Comment,share and save //
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {setState(() {
                      Likestate = !Likestate;
                    });
                    },
                    child: Stack(
                      children: [
                        Icon(Icons.favorite_border_outlined,color: Colors.black,size: 30,),
                        if(Likestate) 
                          Icon(Icons.favorite,color: Colors.pink,size: 30,)
                      ],
                    ),
                  ), 
                  IconButton(onPressed: () {}, icon: Icon(Icons.comment,color: Colors.black,size: 30,)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send,color: Colors.black,size: 30,)),
                ],
              ),
              IconButton(onPressed: () {}, icon:Icon(Icons.bookmark_border_outlined,size: 30,),)
            ],
          ),
        ),


        //Captions //
        Text.rich(
  TextSpan(
    
    children: [
      TextSpan(
        text: widget.username,
        style:const  TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 16// Make the mention blue or another color
        ),
      ),
      const TextSpan(
        text: '    ',
      ),
      TextSpan(
        text: widget.Postcaption,
        style: const TextStyle(
          fontSize: 16.0,
        ),
      ),
      const TextSpan(
        text: '\n'
      ),
      TextSpan(
        text: widget.hashtags,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue, // Make the hashtag blue or another color
        ),
      ),
    ],
  ),
),

      ],
    );
    
  }
  
}
