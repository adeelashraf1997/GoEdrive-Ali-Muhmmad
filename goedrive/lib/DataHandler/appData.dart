import 'package:flutter/cupertino.dart';
import 'package:goedrive/Models/address.dart';
import 'package:goedrive/Models/history.dart';

class AppData extends ChangeNotifier
{
  PickAddress pickUpLocation, dropOffLocation;

  String earnings = "0";
  int countTrips = 0;
  List<String> tripHistoryKeys = [];
  List<History> tripHistoryDataList = [];


  void updatePickUpLocationAddress(PickAddress pickUpAddress)
  {
    pickUpLocation = pickUpAddress;
    notifyListeners();
  }

  void updateDropOffLocationAddress(PickAddress dropOffAddress)
  {
    dropOffLocation = dropOffAddress;
    notifyListeners();
  }

  //history
  void updateEarnings(String updatedEarnings)
  {
    earnings = updatedEarnings;
    notifyListeners();
  }

  void updateTripsCounter(int tripCounter)
  {
    countTrips = tripCounter;
    notifyListeners();
  }

  void updateTripKeys(List<String> newKeys)
  {
    tripHistoryKeys = newKeys;
    notifyListeners();
  }

  void updateTripHistoryData(History eachHistory)
  {
    tripHistoryDataList.add(eachHistory);
    notifyListeners();
  }
}