// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class GameTile extends StatelessWidget{
   //const GameTile({Key? key}) : super(key:key);
   final String imgPath;
   final String jerseyName;
   final String verName;
   final String wIGN;
   final String woIGN;
   final String jerseyPriceW;
   final String jerseyPriceWo;

  GameTile({
    required this.imgPath,
    required this.jerseyName,
    required this.verName,
    required this.wIGN,
    required this.woIGN,
    required this.jerseyPriceW,
    required this.jerseyPriceWo,
    });

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 20),
      child: Container(
        padding: EdgeInsets.all(12),
         width: 200,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.lightGreenAccent[200],
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,  
           children: [
             //img
             ClipRRect(
               borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                 imgPath,
                 ),
             ),

             //name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                children:[
                Text(
                 jerseyName,
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   ),
                 ),
                 Text(
                 verName,
                 ),
              ]),
            ),

            //price
      
            Text(
              woIGN,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('₱' + jerseyPriceWo),
                Icon(Icons.add),
              ],
            ),

            Text(
              wIGN,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('₱' + jerseyPriceW),
                Icon(Icons.add),
              ],
            ),
          ],

          
         ),
      ),
    );
  }
}