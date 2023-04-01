import 'package:corereservation/facility/facilitieapi.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '';

class FaciitiesPageState extends ChangeNotifier {
  List<Facility> facilities = [];

  getFacilities() async{
    facilities = await FacilitiesApi().getFacilities();

    notifyListeners();
  }

}