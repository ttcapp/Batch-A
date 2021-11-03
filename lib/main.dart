import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

double conHeight=100;
double conWidth=100;

String imgSrc1="https://p0.pxfuel.com/preview/853/319/641/flower-nature-summer-plant.jpg";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("My App Bar"),
      ),
      body: Container(

        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    conHeight=300;
                    conWidth=300;
                  });
                },
                onDoubleTap: (){
                  setState(() {
                    conHeight=100;
                    conWidth=100;
                  });
                },
                child: AnimatedContainer(
                  height: conHeight,
                  width: conWidth,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                        image: AssetImage("assets/image/img2.jpg"),
                      fit: BoxFit.cover

                    ),
                    borderRadius: BorderRadius.circular(180),
                    border: Border.all(color: Colors.purple,width: 5)
                  ),
                  duration: Duration(milliseconds: 4000),
                ),
              ),
              Image.asset("assets/image/img3.png"),
              Image.asset("assets/image/img2.jpg"),
              Image.asset("assets/image/img3.png"),
            ],
          ),
        ),
      ),
    );
  }
}


