import 'package:firebase_auth/firebase_auth.dart';
import 'package:goedrive/Models/allUsers.dart';

String mapKey = "AIzaSyCQDgzI35xGfdeN1xVDlFT-a9KVgpfFLdA";

User firebaseUser;

Users userCurrentInfo;

int driverRequestTimeOut = 40;
String statusRide = "";
String rideStatus = "Driver is Coming";
String carDetailsDriver = "";
String driverName = "";
String driverphone = "";

double starCounter=0.0;
String title="";
String carRideType="";

String serverToken = "key=AAAAKUWzX5Q:APA91bErxWIBA4n7l7WtlzGIRA01mWfFIddSJNe-RGkgoFEffD0Tr90mdBUg8PdqAM87EsSmX3L7ho6cAnR4HbGLSvGko0NCYpp38Mee-5wcxmtz975dqUM-_ggTCUnf990aVPhSRnBP";