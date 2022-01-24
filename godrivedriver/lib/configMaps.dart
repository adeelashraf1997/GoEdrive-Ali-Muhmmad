import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:godrivedriver/Models/drivers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:godrivedriver/Models/allUsers.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'Models/rideDetails.dart';

String mapKey = "AIzaSyCQDgzI35xGfdeN1xVDlFT-a9KVgpfFLdA";

User firebaseUser;

Users userCurrentInfo;

User currentfirebaseUser;

StreamSubscription<Position> homeTabPageStreamSubscription;

StreamSubscription<Position> rideStreamSubscription;

final assetsAudioPlayer = AssetsAudioPlayer();

Position currentPosition;

Drivers driversInformation;
RideDetails rideDetails = RideDetails();
String title="";
double starCounter=0.0;

String rideType="";
