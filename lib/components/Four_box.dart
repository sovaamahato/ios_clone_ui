import 'package:flutter/material.dart';

import 'small_box.dart';

class FourBox extends StatelessWidget {
  // const FourBox({Key? key}) : super(key: key);
  final icon1;
  final icon2;
  final icon3;
  final icon4;
  FourBox({required this.icon1, required this.icon2, required this.icon3,required this.icon4});
  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Column(
                  children: [
                    SmallBox(icon: icon1,),
                    SizedBox(height: 36,),
                    SmallBox(icon: icon2,),

                  ],
                ),
                 SizedBox(width: 33,),
                Column(
                  children: [
                    SmallBox(icon: icon3,),
                     SizedBox(height: 36,),
                    SmallBox(icon: icon4,),

                  ],
                ),
              ],
            );
    
  }
}