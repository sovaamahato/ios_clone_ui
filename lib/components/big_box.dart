import 'package:flutter/material.dart';

class BigBox extends StatelessWidget {
  // const BigBox({Key? key}) : super(key: key);

  final child;
  
  BigBox({
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 88, 104, 89),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                      color: Color.fromARGB(255, 57, 70, 57),
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Color.fromARGB(255, 111, 139, 112),
                      offset: const Offset(-5,-5),
                      blurRadius: 10.0,
                      spreadRadius: -4.0,
                    ), 
          ],
          ),
          
      child: child
    );
  }
}
