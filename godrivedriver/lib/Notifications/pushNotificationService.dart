import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:godrivedriver/Models/rideDetails.dart';
import 'package:godrivedriver/Notifications/notificationDialog.dart';
import 'package:godrivedriver/configMaps.dart';
import 'package:godrivedriver/main.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:google_maps_flutter/google_maps_flutter.dart';

class PushNotificationService
{

  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;


  Future initialize(context) async
  {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      retrieveRideRequestInfo(getUserRequestId(message), context);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      retrieveRideRequestInfo(getUserRequestId(message), context);
    });

    FirebaseMessaging.onBackgroundMessage((RemoteMessage message) => retrieveRideRequestInfo(getUserRequestId(message), context));

  }

  Future<String> getToken() async
  {
    String token = await firebaseMessaging.getToken();
    print("This is token :: ");
    print(token);
    driversRef.child(currentfirebaseUser.uid).child("token").set(token);

    firebaseMessaging.subscribeToTopic("alldrivers");
    firebaseMessaging.subscribeToTopic("allusers");
  }

  String getUserRequestId(RemoteMessage message) {
// // you cant return directly no need to save in userRequestId  variable
// // this will work for android you should add // print('${ message.data}') to see what
// // inside
    String userRequestId = '';
    if (Platform.isAndroid) {
      userRequestId = message.data['data']['ride_request_id'].toString();
    } else {
      userRequestId = message.data['ride_request_id'].toString();
    }
    return userRequestId;
  }

  Future<void> retrieveRideRequestInfo(String rideRequestId, BuildContext context)
  {
    newRequestsRef.child(rideRequestId).once().then((DataSnapshot dataSnapShot)
    {
      if(dataSnapShot.value != null)
      {
        assetsAudioPlayer.open(Audio("assets/sounds/alert.mp3"));
        assetsAudioPlayer.play();

        double pickUpLocationLat = double.parse(dataSnapShot.value['pickup']['latitude'].toString());
        double pickUpLocationLng = double.parse(dataSnapShot.value['pickup']['longitude'].toString());
        String pickUpAddress = dataSnapShot.value['pickup_address'].toString();

        double dropOffLocationLat = double.parse(dataSnapShot.value['dropoff']['latitude'].toString());
        double dropOffLocationLng = double.parse(dataSnapShot.value['dropoff']['longitude'].toString());
        String dropOffAddress = dataSnapShot.value['dropoff_address'].toString();

        String paymentMethod = dataSnapShot.value['payment_method'].toString();

        String rider_name = dataSnapShot.value["rider_name"];
        String rider_phone = dataSnapShot.value["rider_phone"];


        rideDetails.ride_request_id = rideRequestId;
        rideDetails.pickup_address = pickUpAddress;
        rideDetails.dropoff_address = dropOffAddress;
        rideDetails.pickup = LatLng(pickUpLocationLat, pickUpLocationLng);
        rideDetails.dropoff = LatLng(dropOffLocationLat, dropOffLocationLng);
        rideDetails.payment_method = paymentMethod;
        rideDetails.rider_name = rider_name;
        rideDetails.rider_phone = rider_phone;

        print("Information :: ");
        print(rideDetails.pickup_address);
        print(rideDetails.dropoff_address);

        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => NotificationDialog(rideDetails: rideDetails),
        );
      }
    });
  }
}