import 'package:flutter/material.dart';

class BlackBigBox extends StatelessWidget {
  // const BlackBigBox({Key? key}) : super(key: key);
  final child;
  BlackBigBox({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 60, 63, 60),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [],
                ),
                child: child,
              );
    
  }
}