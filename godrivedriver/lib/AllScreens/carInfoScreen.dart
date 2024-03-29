import 'package:godrivedriver/AllScreens/mainscreen.dart';
import 'package:godrivedriver/AllScreens/registerationScreen.dart';
import 'package:godrivedriver/configMaps.dart';
import 'package:godrivedriver/main.dart';
import 'package:flutter/material.dart';

class CarInfoScreen extends StatefulWidget {
  static const String idScreen = "carinfo";

  @override
  _CarInfoScreenState createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen> {
  TextEditingController carModelTextEditingController = TextEditingController();

  TextEditingController carNumberTextEditingController =
      TextEditingController();

  TextEditingController carColorTextEditingController = TextEditingController();

  List<String> carTypesList = ['Go E Mini', 'Mini', 'Auto', 'Bike'];

  String selectedCarType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 22.0,
              ),
              Image.asset(
                "assets/images/logo.png",
                width: 390.0,
                height: 250.0,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(22.0, 22.0, 22.0, 32.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "Enter Car Details",
                      style:
                          TextStyle(fontFamily: "Brand Bold", fontSize: 24.0),
                    ),
                    SizedBox(
                      height: 26.0,
                    ),
                    TextField(
                      controller: carModelTextEditingController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Car Model",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                      ),
                      style: TextStyle(fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      controller: carNumberTextEditingController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Car Number",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                      ),
                      style: TextStyle(fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      controller: carColorTextEditingController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Car Color",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                      ),
                      style: TextStyle(fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 3),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: DropdownButton(
                          iconSize: 40,
                          hint: Text(
                            'Please choose Car Type',
                            style: TextStyle(color: Colors.black),
                          ),
                          value: selectedCarType,
                          onChanged: (newValue) {
                            setState(() {
                              selectedCarType = newValue;
                              displayToastMessage(selectedCarType, context);
                            });
                          },
                          items: carTypesList.map((car) {
                            return DropdownMenuItem(
                              child: Text(car),
                              value: car,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 42.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                        ),
                        onPressed: () {
                          if (carModelTextEditingController.text.isEmpty) {
                            displayToastMessage(
                                "please write Car Model.", context);
                          } else if (carNumberTextEditingController
                              .text.isEmpty) {
                            displayToastMessage(
                                "please write Car Number.", context);
                          } else if (carColorTextEditingController
                              .text.isEmpty) {
                            displayToastMessage(
                                "please write Car Color.", context);
                          } else if (selectedCarType == null) {
                            displayToastMessage(
                                "please choose Car Type.", context);
                          } else {
                            saveDriverCarInfo(context);
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.all(17.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "NEXT",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 26.0,
                              ),
                            ],
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
      ),
    );
  }

  void saveDriverCarInfo(context) {
    String userId = currentfirebaseUser.uid;

    Map carInfoMap = {
      "car_color": carColorTextEditingController.text,
      "car_number": carNumberTextEditingController.text,
      "car_model": carModelTextEditingController.text,
      "type": selectedCarType,
    };

    driversRef.child(userId).child("car_details").set(carInfoMap);

    Navigator.pushNamedAndRemoveUntil(
        context, MainScreen.idScreen, (route) => false);
  }
}
