import 'package:firebase_auth/firebase_auth.dart';
import 'package:goedrive/Models/allUsers.dart';

String mapKey = "AIzaSyCQDgzI35xGfdeN1xVDlFT-a9KVgpfFLdA";
User firebaseUser;
Users userCurrentInfo;
int driverRequestTimeOut = 40;
String statusRide = "";
String rideStatus = "";
String carDetailsDriver = "";
String driverName = "";
String driverphone = "";
double starCounter = 0.0;
String title = "";
String carRideType = "";
String serverToken =
    "key=AAAA-76Y6kY:APA91bHDiIkQT5FZJu98f0GeuWFdW1lwpenUlrkM0svH8uwnK7t4cBdzY3q30ZLUhzhel-3cnRciqYSgvGWwDIjfnhQwcREWilv8XMHlzAbGYV0FIajBu2JnHEmjBswnWgfWFQjqgFD6";
