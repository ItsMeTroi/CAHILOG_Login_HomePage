// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_homepage/game_tile.dart';
//import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key:key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.transparent,
        ),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.greenAccent.shade400, Colors.yellowAccent.shade400
                ],
              ),
            ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
           backgroundColor: Colors.lightGreen,
           leading: Icon(Icons.menu),
           actions: [
             Padding(
               padding: const EdgeInsets.only(right:20.0),
               child: Icon(Icons.person),
             ),
           ],
        ),
        bottomNavigationBar: BottomNavigationBar(
           backgroundColor: Colors.lightGreen,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
              ),
            ],
          ),
        body: Column(children: [
          //Text widget
          SizedBox(height: 5),
          /*Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "WELCOME TO THE JAGUARS ESPORTS APP",
              style: GoogleFonts.bebasNeue(
                fontSize: 45,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          */
           Image.asset(
                'assets/images/LogoJAG.png',
                height: 150,
                width: 150,
              ),
           SizedBox(height: 20),


          //Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.black,
                    ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                    ),
                ),
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),



          // horizontalClickable  Widgets from 1-3
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GameTile(
                  imgPath: 'assets/images/Jersey1.png',
                  jerseyName: 'Green Jag Jersey',
                  verName: 'Version 1',
                  woIGN: 'Without IGN',
                  wIGN: 'With IGN',
                  jerseyPriceW: '799.00',
                  jerseyPriceWo: '749.00',
                ),
                GameTile(
                  imgPath: 'assets/images/Jersey3.png',
                  jerseyName: 'Green Jag Jersey',
                  verName: 'Version 2',
                  woIGN: 'Without IGN',
                  wIGN: 'With IGN',
                  jerseyPriceW: '699.00',
                  jerseyPriceWo: '649.00',
                ),
                GameTile(
                  imgPath: 'assets/images/Jersey2.png',
                  jerseyName: 'Pink Jag Jersey',
                  verName: 'Version 1',
                  woIGN: 'Without IGN',
                  wIGN: 'With IGN',
                  jerseyPriceW: '799.00',
                  jerseyPriceWo: '749.00',
                ),
                GameTile(
                  imgPath: 'assets/images/Jersey4.png',
                  jerseyName: 'Pink Jag Jersey',
                  verName: 'Version 2',
                  woIGN: 'Without IGN',
                  wIGN: 'With IGN',
                  jerseyPriceW: '699.00',
                  jerseyPriceWo: '649.00',
                ),
              ]),
            ),
        ]),
      ),
    );
  }
}