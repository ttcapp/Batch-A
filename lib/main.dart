import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_batch_a/log_in.dart';
import 'package:new_batch_a/profile.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() {
  runApp( MyApp());
}

double conHeight=100;
double conWidth=100;

String imgSrc1="https://p0.pxfuel.com/preview/853/319/641/flower-nature-summer-plant.jpg";

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final navigatorKey= GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: SlideDrawer(
        offsetFromRight: 80,
        backgroundColor: Colors.black54,
        items: [
          MenuItem('উইকিপিডিয়া',icon: Icons.account_balance,
              onTap: (){
                navigatorKey.currentState!
                    .push(MaterialPageRoute(builder:
                    (context)=>LogIn()));
              }),
          MenuItem('Project', icon: Icons.ac_unit,
              onTap: (){}),
          MenuItem('Favourite',icon: Icons.favorite,
              onTap: (){}),
          MenuItem('Profile',icon: Icons.account_circle_sharp,
              onTap: (){
            navigatorKey.currentState!
                .push(MaterialPageRoute(builder:
            (context)=>Profile()));
              }),
          MenuItem('Setting', icon: Icons.settings,
              onTap: (){}),
        ],
        child: MyHomePage(),
      ),
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
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
        title: Text("My App Bar"),
      ),
      body: Container(

        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                        (context)=>LogIn()));
                  },
                  child: Text("Log In")
              ),
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


