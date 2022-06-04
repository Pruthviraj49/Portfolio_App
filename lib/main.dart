import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Portfolio"),
        ),
        body: SingleChildScrollView(
          child: Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(image: AssetImage())  you can add background image in AssetImage bracket
            // ),

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("images/insta.png"),
                      radius: 50,
                    ),
                    SizedBox(width: 25),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: <Widget>[
                            // buildAnimatedText1(),
                            Text(
                              "Pruthviraj ",
                              style: TextStyle(fontSize: 23),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            buildAnimatedText2(),
                          ],
                        ),
                      ],
                    ),

                    // Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,

                    //   children: const <Widget>[
                    //     Text(
                    //       "Pruthviraj",
                    //       style: TextStyle(fontSize: 25),
                    //     ),
                    //     Text("Flutter Developer",
                    //         style: TextStyle(fontSize: 15))
                    //   ],
                    // )
                  ],
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.assignment,
                            size: 35,
                          ),
                          SizedBox(width: 25, height: 10),
                          Text("B-Tech in IT")
                        ],
                      ),
                      Row(children: const <Widget>[
                        Icon(
                          Icons.school,
                          size: 35,
                        ),
                        SizedBox(width: 25, height: 10),
                        Text("VJTI, Mumbai")
                      ]),
                      Row(children: const <Widget>[
                        Icon(
                          Icons.location_pin,
                          size: 35,
                        ),
                        SizedBox(width: 25, height: 10),
                        Text("Pdsuryawanshi45@gmail.com")
                      ]),
                      Row(children: const <Widget>[
                        Icon(
                          Icons.account_circle,
                          size: 35,
                        ),
                        SizedBox(width: 25, height: 10),
                        Text("+91 9529142977")
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "About myself",
                  style: TextStyle(color: Colors.blue),
                ),
                Text(
                  "      A Second-year student at Veermata Jijabai Technological Institute, trying to excel in the different technical and soft skills.",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 200,
                ),
                Text(
                  "Created by Pruthvi ",
                  style: TextStyle(color: Colors.blue),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }

  // Widget buildAnimatedText1() => AnimatedTextKit(
  //       animatedTexts: [
  //         TypewriterAnimatedText(
  //           "Pruthviraj ",
  //           textStyle: TextStyle(fontSize: 25),
  //           speed: Duration(milliseconds: 150),
  //         ),
  //       ],
  //       totalRepeatCount: 4,
  //     );

  Widget buildAnimatedText2() => AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            "Flutter Developer ",
            textStyle: TextStyle(fontSize: 20),
            speed: Duration(milliseconds: 150),
          ),
        ],
        totalRepeatCount: 4,
      );
}
