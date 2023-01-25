import 'package:flutter/material.dart';
import 'package:ios_clone_ui/pages/my_page1.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller= PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 85, 100, 86),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.lock,color: Colors.white,size: 27,),
              SizedBox(height: 12,),
              Text("2:10",style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("wednesday,25 jan",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
              
              Center(child: Text("created with flutter❤",style: TextStyle(fontSize: 15,color: Colors.white),)),
      
              SlideAction(
                borderRadius: 14,
                elevation: 0,
                innerColor: Color.fromARGB(255, 37, 43, 37),
                outerColor: Color.fromARGB(255, 67, 78, 68),
                sliderButtonIcon: Icon(Icons.lock,color: Colors.white,),
                text: "Slide to Unlock",
                textStyle: TextStyle(color: Colors.white,fontSize: 20),
                height: 65,
      
                onSubmit: () {
                  //do something
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return MyPage1();
                  }));
                },
              ),
            ],
          ),
        ),
      )
    );
    
  }
}