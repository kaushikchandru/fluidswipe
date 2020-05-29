import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:liquidswipe/detailsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/detailsPage':(context) => detailsPage(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           Container(
             padding: EdgeInsets.only(left: 20),
             width: MediaQuery.of(context).size.width,

             child: Text("LIQUID", style: TextStyle(
                    color: Colors.black,
                  fontSize: 60,
               fontWeight: FontWeight.w900,
                ),),
           ),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,

              child: Text("TRANSITION", style: TextStyle(
                color: Colors.black,
                fontSize: 33,
                fontWeight: FontWeight.w900,
              ),),
            ),
            SizedBox(height: 60,),
            Container(
              height: 400,
            width: 300,
//            margin: EdgeInsets.only(left: 100, right: 100),

              color: Colors.white,
              child: LiquidSwipe(
                positionSlideIcon: 0.33,
                enableSlideIcon: true,
                onPageChangeCallback:pageChangeCallback,
                enableLoop: false,
                pages: <Container>[
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.deepPurpleAccent,
                        ),

                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.cyanAccent,
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  pageChangeCallback(int lpage) {
    print(lpage);
    setState(() {
      page = lpage;
      if(page == 1)
        {
          Navigator.pushNamed(context, '/detailsPage');
        }
    });
  }
}
