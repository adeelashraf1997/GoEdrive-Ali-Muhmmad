import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  SliderPage({this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            width: width * 0.8,
          ),
          SizedBox(
            height: 40,
          ),
          Text(title,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              description,
              style: TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  letterSpacing: 0.7,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }
}
