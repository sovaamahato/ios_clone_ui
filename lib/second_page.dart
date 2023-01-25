import 'package:flutter/material.dart';

import 'components/Four_box.dart';
import 'components/black_big_box.dart';

class SecondPage extends StatelessWidget {
  // const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(children: [
          //first row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlackBigBox(child: Center(
                    child: Icon(Icons.alarm,color: Colors.white
                    ,)),),
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
              BlackBigBox(child: Center(
                    child: Icon(Icons.mouse,color: Colors.white,)),),
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
                    child: Icon(Icons.search,color: Colors.white,)),),
              FourBox(
                  icon1: Icons.pause,
                  icon2: Icons.circle,
                  icon3: Icons.waving_hand,
                  icon4: Icons.chat_bubble),
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
