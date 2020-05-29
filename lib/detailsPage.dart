import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'main.dart';
class detailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: detail(),
      routes: {
        '/mainPage' : (context)=>MyApp(),
      },
    );
  }
}
class detail extends StatefulWidget {
  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LiquidSwipe(
        pages: <Container>[
          Container(
            color: Colors.cyanAccent,
          ),
         Container(
           color: Colors.white,
         )
        ],
        onPageChangeCallback: pageChangeCallback,
        enableSlideIcon: true,
        enableLoop: false,
      ),
    );
  }
  pageChangeCallback(int lpage) {
    print(lpage);
    setState(() {
      page = lpage;
      if(page == 1)
      {
        print(page);
        Navigator.pushNamed(context, '/mainPage');
      }
    });
  }
}

