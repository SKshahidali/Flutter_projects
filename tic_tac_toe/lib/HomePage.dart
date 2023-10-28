import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool turnforo = true; //<----->  First input is a O <-----> //
  List<String> displayXO = ['', '', '', '', '', '', '', '', ''];
  int oscore = 0;
  int xscore = 0;
  int boxesfilled = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252525),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "PLAYER O",
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      Text(
                        oscore.toString(),
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "PLAYER X",
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      Text(
                        xscore.toString(),
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _tapped(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFFD9D9D9).withOpacity(0.6)),
                      ),
                      child: Center(
                          child: Text(
                        displayXO[index],
                        style: const TextStyle(color: Colors.white, fontSize: 36),
                      )),
                    ),
                  );
                }),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  void _tapped(int index) {
    setState(() {
      if (turnforo && displayXO[index] == '') {
        displayXO[index] = 'O';
        boxesfilled += 1;
      } else if (!turnforo && displayXO[index] == '') {
        displayXO[index] = 'X';
        boxesfilled += 1;
      }
      turnforo = !turnforo;
      _checkwinner();
    });
  }

  void _checkwinner() {
    //<-----> First Row <-----> //
    if (displayXO[0] == displayXO[1] &&
        displayXO[0] == displayXO[2] &&
        displayXO[0] != '') {
      _showindialog(displayXO[0]);
    }

    //<-----> Second Row <-----> //
    if (displayXO[3] == displayXO[4] &&
        displayXO[3] == displayXO[5] &&
        displayXO[3] != '') {
      _showindialog(displayXO[3]);
    }

    //<-----> Third Row <-----> //
    if (displayXO[6] == displayXO[7] &&
        displayXO[6] == displayXO[8] &&
        displayXO[6] != '') {
      _showindialog(displayXO[6]);
    }

    //<-----> First Column <-----> //
    if (displayXO[0] == displayXO[3] &&
        displayXO[0] == displayXO[6] &&
        displayXO[0] != '') {
      _showindialog(displayXO[0]);
    }

    //<-----> Second Column <-----> //
    if (displayXO[1] == displayXO[4] &&
        displayXO[1] == displayXO[7] &&
        displayXO[1] != '') {
      _showindialog(displayXO[1]);
    }

    //<-----> Third Column <-----> //
    if (displayXO[2] == displayXO[5] &&
        displayXO[2] == displayXO[8] &&
        displayXO[2] != '') {
      _showindialog(displayXO[2]);
    }

    //<-----> Diagonal Left 048 <-----> //
    if (displayXO[0] == displayXO[4] &&
        displayXO[0] == displayXO[8] &&
        displayXO[0] != '') {
      _showindialog(displayXO[0]);
    }

    //<-----> Diagonal Right 246 <-----> //
    if (displayXO[2] == displayXO[4] &&
        displayXO[2] == displayXO[6] &&
        displayXO[2] != '') {
      _showindialog(displayXO[2]);
    } else if (boxesfilled == 9) {
      _drawdialog();
    }
  }

  void _showindialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Center(child: Text("WINNER IS PLAYER: " + winner)),
            actions: <Widget>[
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        _clearboard();
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "PLAY AGAIN",
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ))),
            ],
          );
        });

    if (winner == 'O') {
      oscore += 1;
    } else if (winner == 'X') {
      xscore += 1;
    }
  }

  void _clearboard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        displayXO[i] = '';
      }
    });
    boxesfilled = 0;
  }

  void _drawdialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Center(child: Text("IT'S A DRAW")),
            actions: <Widget>[
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        _clearboard();
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "PLAY AGAIN",
                        style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ))),
            ],
          );
        });
  }
}
