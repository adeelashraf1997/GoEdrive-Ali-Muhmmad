import 'package:flutter/material.dart';
import 'package:goedrive/AllScreens/splashscreen/splashscreen.dart';

//import 'package:google_fonts/google_fonts.dart';

class Extra extends StatefulWidget {
  @override
  _ExtraState createState() => _ExtraState();
  static const String exstra = "loading screen";
}

class _ExtraState extends State<Extra> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
      //upperBound: 250, while using curves don't use upper bound
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward();

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Splashscreen();
          },
        ));
      }
    });

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/logo.png'),
              height: animation.value * 130,
            ),
            Text('Go E Drive',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
