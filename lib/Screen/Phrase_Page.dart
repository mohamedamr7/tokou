import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhrasePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0xff452F24),
        title: Text("Phrases",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 85,
            color: Colors.lightBlue,
            child: Row(
              children: [
                Text("\t\tKōdoku suru koto o wasurenaide kudasai\n\t\tDon\'t forget to subscribe",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14
                ),

                ),
                Spacer(),
                IconButton(
                  padding: EdgeInsets.only(right: 20),
                  onPressed: () {
                    final Player =AudioPlayer();
                    Player.play(AssetSource("grand mother.wav"));
                  },
                  icon: Icon(Icons.play_arrow,
                    size: 40,
                    color: Colors.white,
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}