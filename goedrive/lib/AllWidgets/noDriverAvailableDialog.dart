import 'package:flutter/material.dart';
import 'package:goedrive/AllScreens/registerationScreen.dart';
import 'package:goedrive/Assistants/geoFireAssistant.dart';
import 'package:goedrive/Models/nearbyAvailableDrivers.dart';

List<NearbyAvailableDrivers> availableDrivers;

class NoDriverAvailableDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.all(0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Driver Not Found',
                  style: TextStyle(
                      fontSize: 25.0,
                      //fontFamily: "Brand Bold",
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'No available driver found in the nearby, we suggest you try again shortly',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shadowColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Try Again",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        // color: Theme.of(context).accentColor,
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Cancel",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
