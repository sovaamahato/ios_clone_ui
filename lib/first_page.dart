// import 'dart:html';

import 'package:flutter/material.dart';
import '/components/black_big_box.dart';
import '/components/big_box.dart';
import '/components/small_box.dart';

import 'components/Four_box.dart';

class FirstPage extends StatelessWidget {
  // const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(children: [
          //first row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              //4small box
              FourBox(
                icon1: Icons.photo_album,
                icon2: Icons.camera,
                icon3: Icons.gif_box,
                icon4: Icons.settings,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),

          //2nd row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FourBox(
                  icon1: Icons.settings,
                  icon2: Icons.attach_money_outlined,
                  icon3: Icons.check_box,
                  icon4: Icons.maps_ugc_rounded),
              BigBox(
                  child: Icon(
                Icons.apple,size: 35,
                color: Colors.white,
              )),
            ],
          ),
          SizedBox(
            height: 25,
          ),

          //third row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlackBigBox(child: Center(
                    child: Text(
                  "FLutter",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),),
              FourBox(
                  icon1: Icons.settings,
                  icon2: Icons.attach_money_outlined,
                  icon3: Icons.check_box,
                  icon4: Icons.maps_ugc_rounded),
            ],
          ),
          SizedBox(
            height: 18,
          ),
        ]),
      ),
    );
  }
}
