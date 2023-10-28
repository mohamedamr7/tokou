import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../components/dataNumber.dart';
class Item extends StatelessWidget {
    final Number number;
  const Item({super.key, required this.number});
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color(0xffF9952F),
      child: Row(
        children: [
          Container(
            width: 90,
            color: Color(0xffFFF4DB),
            child: Image(image: AssetImage("${number.image}"),),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("${number.text1} \n${number.text2}",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xffFFEBBC),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              splashColor: Colors.black,
              splashRadius: 50,
              onPressed: () {
                final Player =AudioPlayer();
                Player.play(AssetSource("${number.song}"));
              },
              icon:Icon(Icons.play_arrow,
                size: 40,
                color: Color(0xffFFEBBC),
              ),

            ),
          ) ,
        ],
      ),
    );
  }
}
