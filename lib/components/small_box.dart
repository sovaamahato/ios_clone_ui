import 'package:flutter/material.dart';

class SmallBox extends StatelessWidget {
  // const SmallBox({Key? key}) : super(key: key);
  final icon;
  SmallBox({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.grey[850], borderRadius: BorderRadius.circular(16)),
      child: Icon(
        icon,size: 22,
        color: Colors.white,
      ),
    );
  }
}
