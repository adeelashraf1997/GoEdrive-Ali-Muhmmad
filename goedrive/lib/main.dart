import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:goedrive/AllScreens/splashscreen/exstra.dart';
import 'package:goedrive/AllScreens/splashscreen/splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:goedrive/AllScreens/loginScreen.dart';
import 'package:goedrive/AllScreens/mainscreen.dart';
import 'package:goedrive/AllScreens/registerationScreen.dart';
import 'package:goedrive/DataHandler/appData.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

DatabaseReference usersRef =
    FirebaseDatabase.instance.reference().child("users");
DatabaseReference driversRef =
    FirebaseDatabase.instance.reference().child("drivers");
DatabaseReference rideRequestRef =
    FirebaseDatabase.instance.reference().child("rideRequest");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        title: 'GO E Drive',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: FirebaseAuth.instance.currentUser == null
            ? Extra.exstra
            : Splashscreen.splash,
        routes: {
          Extra.exstra: (context) => Extra(),
          Splashscreen.splash: (context) => Splashscreen(),
          RegisterationScreen.idScreen: (context) => RegisterationScreen(),
          LoginScreen.idScreen: (context) => LoginScreen(),
          MainScreen.idScreen: (context) => MainScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
