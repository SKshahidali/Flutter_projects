import 'package:flutter/material.dart';
import 'package:instagram_clone/models/instagram_post.dart';
import 'package:instagram_clone/models/instagram_story_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
        title: Center(
            child: Image.asset(
          "assets/instagram text.png",
          height: 50,
        )),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.send))],
      ),
      body: SingleChildScrollView(
        child: (Column(
          
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    StoryContainer(
                        ImageURL:
                            "https://img.freepik.com/premium-photo/person-wearing-glasses_500927-366.jpg?w=360",
                        UserName: "Your Story"),
                    StoryContainer(
                        ImageURL:
                            "https://img.freepik.com/premium-photo/futuristic-portrait-young-beautiful-woman-with-digital-face-3d-rendering_934652-4023.jpg",
                        UserName: "Shahid"),
                    StoryContainer(
                        ImageURL:
                            "https://img.freepik.com/free-photo/fun-3d-cartoon-illustration-indian-businessman_183364-114475.jpg?size=626&ext=jpg",
                        UserName: "Find my ID"),
                    StoryContainer(
                        ImageURL:
                            "https://img.freepik.com/free-photo/view-happy-3d-man-using-tablet_23-2150709864.jpg?t=st=1696347015~exp=1696350615~hmac=a99764c1e53a296a9325e3f588a6488f78c932eabd32c67adbc5551145e13921&w=740",
                        UserName: "Traveller Kid"),
                    StoryContainer(
                        ImageURL:
                            "https://img.freepik.com/free-psd/3d-illustration-person-with-glasses_23-2149436191.jpg?size=626&ext=jpg",
                        UserName: "The Humble one"),
                    StoryContainer(
                        ImageURL:
                            "https://yt3.googleusercontent.com/ZxNyIh9epeuU2Ra5dNRBJKbB53jMa2MTDiUyii1RsaijU6bC56Vf6xHVsrOekdQhpJtAzXFEcg=s900-c-k-c0x00ffffff-no-rj",
                        UserName: "aditya_jod"),
                  ],
                ),
              ),
            ),
            PostContainer(
                profileImageURL:"https://gumlet.assettype.com/afkgaming%2Fimport%2Fmedia%2Fimages%2F37425-0a25b1bd64be7b4413fdb7f26fe18283.jpeg?compress=true&dpr=1&w=1200",
                username: "teamxsparx",
                PostImage: "https://gumlet.assettype.com/afkgaming%2F2023-08%2F11ce5978-c501-4e58-aea2-135e55c5305f%2F363502474_197515773041122_7605693565582068885_n.webp?compress=true&dpr=1&w=1200",
                Postcaption: "We are ready to roll for our india-korea LAN ", 
                hashtags: '#scout #tx #pukar #sarang #dreams #adityajod',
                ),
      
            PostContainer(
                profileImageURL:"https://staticg.sportskeeda.com/editor/2021/03/02ac7-16165952282946-800.jpg",
                username: "FnaticEsportsIndia",
                PostImage: "https://www.talkesport.com/wp-content/uploads/72571403_523668251755388_5044634909236638244_n.jpg",
                Postcaption: "Memories of our indian gaming lineup ",
                hashtags: '#scout #fnaticindia',
                )
          ],
        )),
      ),
    );
  }
}
