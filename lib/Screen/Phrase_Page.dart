import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokou/models/itempharse.dart';

import '../components/dataPhrase.dart';

class PhrasePage extends StatelessWidget{
  List<PharseData> Pharses=[
    PharseData(
        textline1: 'Kōdoku suru koto o wasurenaide kudasai',
        textline2: 'Don\'t forget to subscribe',
    ),
    PharseData(
        textline1:  'Go kibun wa ikagadesu ka',
        textline2:  'how are you feeling',
    ),
    PharseData(
        textline1:  'Watashi wa anime ga daisukidesu',
        textline2:    'I love anime',
    ),
    PharseData(
      textline1:  'Watashi wa puroguramingu ga daisukidesu',
      textline2:    'I love programming',
    ),
    PharseData(
      textline1:  'Puroguramingu wa kantandesu',
      textline2:    'programming is easy',
    ),
    PharseData(
      textline1:  'Namae wa nandesu ka',
      textline2:    'what is your name',
    ),
    PharseData(
      textline1:  'Doko ni iku no',
      textline2:    'where are you going',
    ),
    PharseData(
      textline1:  'Hai, ikimasu',
      textline2:    'yes, I\'m coming',
    ),

  ];
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
          Expanded(
            child: ListView.builder(
                itemBuilder: (BuildContext context,int index)=>PharseItem(Pdata: Pharses[index]),
              itemCount: Pharses.length,
            ),
          ),
        ],
      ),
    );
  }

}