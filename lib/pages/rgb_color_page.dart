import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';

class RgbColorPage extends StatefulWidget {
  const RgbColorPage({Key? key}) : super(key: key);

  @override
  State<RgbColorPage> createState() => _RgbColorPageState();
}

class _RgbColorPageState extends State<RgbColorPage> {

  int rColor = 245;
  int gColor = 245;
  int bColor = 245;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => setState(() => _generateRandomColor()),
      onLongPress: () => setState((){
        rColor = 245;
        gColor = 245;
        bColor = 245;
      }),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(rColor, gColor, bColor, 1),
        body: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height/5,
              width: MediaQuery.of(context).size.width/1.1,
              child: Card(
                elevation: 4.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    const Text(
                      Constants.MAIN_TEXT,
                      style: TextStyle(
                        fontSize: Constants.FONT_SIZE,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "The color contains R: $rColor, G: $gColor, B: $bColor points :D",
                      style: const TextStyle(
                        fontSize: Constants.FONT_SIZE/2.5,
                      ),
                    ),
                    const SizedBox(height: 15,),
                    const Text(
                      Constants.SUBMAIN_TEXT,
                      style: TextStyle(
                        fontSize: Constants.FONT_SIZE/2.8,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }

  void _generateRandomColor(){
   Random random = Random();
      rColor = random.nextInt(256);
      gColor = random.nextInt(256);
      bColor = random.nextInt(256);
  }
}
