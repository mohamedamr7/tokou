import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokou/components/dataPhrase.dart';
class PharseItem extends StatelessWidget{
  const PharseItem({super.key, required this.Pdata});
  final PharseData Pdata;

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 85,
      color: Colors.lightBlue,
      child: Row(
        children: [
          Text("\t\t\t\t${Pdata.textline1}\n\t\t\t\t${Pdata.textline2}",
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
    );
  }

}