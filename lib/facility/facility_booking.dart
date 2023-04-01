import 'package:corereservation/Style/colorstyle.dart';
import 'package:corereservation/setting/facility.dart';
import 'package:flutter/material.dart';

class FacilityBooking extends StatefulWidget {
  const FacilityBooking(Item facility, {Key? key}) : super(key: key);

  @override
  State<FacilityBooking> createState() => _FacilityBookingState();
}

class _FacilityBookingState extends State<FacilityBooking> {
  @override
  Widget build(BuildContext context) {
    var item;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyle.text,
        title: const Text("Facility Booking"),
      ),
      body:  Center(
        child: Column(
          children: [
            Text("Facility Booking"),
          ],

        ),
      ),
    );
  }
}
