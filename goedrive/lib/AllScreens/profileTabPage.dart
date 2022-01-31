import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geofire/flutter_geofire.dart';
import 'package:goedrive/AllScreens/loginScreen.dart';
import 'package:goedrive/configMaps.dart';

class ProfileTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.green.shade200,
        elevation: 0,
      ),
      backgroundColor: Colors.green.shade200,
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/user_icon.png",
                      height: 100.0,
                      width: 100.0,
                    ),
                    Text(
                      userCurrentInfo.name,
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        //fontFamily: "Brand Bold",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                  width: 100,
                ),
                SizedBox(
                  height: 20.0,
                ),
                InfoCard(
                  text: userCurrentInfo.name,
                  icon: Icons.person,
                  onPressed: () async {
                    print("this is phone.");
                  },
                ),
                InfoCard(
                  text: userCurrentInfo.phone,
                  icon: Icons.phone,
                  onPressed: () async {
                    print("this is phone.");
                  },
                ),
                InfoCard(
                  text: userCurrentInfo.email,
                  icon: Icons.email,
                  onPressed: () async {
                    print("this is email.");
                  },
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //call button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ))),
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                          Navigator.pushNamedAndRemoveUntil(
                              context, LoginScreen.idScreen, (route) => false);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Signout   ",
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                              ),
                              Icon(
                                Icons.logout,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  Function onPressed;

  InfoCard({
    this.text,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.black87,
          ),
          title: Text(
            text,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
              //fontFamily: "Brand Bold",
            ),
          ),
        ),
      ),
    );
  }
}
