import 'package:corereservation/Style/colorstyle.dart';
import 'package:corereservation/facility/facility_booking.dart';
import 'package:corereservation/providers/providerfacilitiestate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'setting/facility.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  ItemWidget({Key? key, required this.item}) : super(key: key);

  // List<Facility> facilities =[];
  void initState() {
    // super.initState();
    FaciitiesPageState().getFacilities();
  }

  @override
  Widget build(BuildContext context) {
    var provider =
        Provider.of<FaciitiesPageState>(context); //provider listen to state
    // facilities = provider.facilities;

    return Stack(
      children: [

        Container(
          color: ColorStyle.cardBackground,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      color: ColorStyle.whiteText,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                           // child: Image.network(
                            child: Image.asset(
                              item.image,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Text(
                        item.name,
                        style: TextStyle(
                            color: ColorStyle.text,
                            //fontSize: officeName,
                            fontWeight: FontWeight.w800),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.desc,
                            style: TextStyle(
                              color: ColorStyle.text,
                              // fontSize: officeType,
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.03,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                  color: ColorStyle.available,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(child: Text("Available"))),

                          // ElevatedButton(onPressed: (){
                          //   Navigator.push(context,
                          //       MaterialPageRoute(builder: (context) =>FacilityBooking(item)));
                          //
                          // }, child: Text("Book"))
                          //
                        ],

                      )

                    ],

                  ),

                  //          width: 500,
                  //          height: 150,
                  //          color: ColorStyle.whiteText,
                  // // padding: const EdgeInsets.all(10.0),
                  //          child: ListTile(
                  //            title:
                  //           // Text:(item.name, style: TextStyle(color: ColorStyle.text, fontWeight: FontWeight.bold, fontSize: 12)),
                  //            Padding(
                  //              padding: const EdgeInsets.all(10.0),
                  //              child: Align(
                  //                alignment: Alignment.bottomLeft,
                  //                child: Text(item.name, style: TextStyle(color: ColorStyle.text, fontWeight: FontWeight.bold, fontSize: 12)),
                  //              ),
                  //            ),
                  //
                  //            leading: Image.asset(
                  //              item.image,
                  //              height: 200,
                  //              width: 120,
                  //            ),
                  //            subtitle: Center(child: Text(item.desc, style: TextStyle(color: ColorStyle.text, fontSize: 10))),
                  //            trailing: Text(
                  //              "${item.status}",
                  //              style: TextStyle(color: ColorStyle.blackText, fontSize: 11),
                  //            ),
                  //          ),
                  //          ),
                ),
              ],
            ),
          ),
        ),

        /* children: [
        Container(
      color: ColorStyle.cardBackground,
      child: Padding(padding: const EdgeInsets.only(left: 20,right: 20,top: 120),

        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Our Offices",
                  style: TextStyle(
                    color: ColorStyle.text,
                    fontSize: 40,
                  ),
                ),
                Text(item.name, style: TextStyle(color: ColorStyle.text, fontWeight: FontWeight.bold, fontSize: 12)),
                Column(
                  children: [
                   Container(
                     color: Colors.cyan,


                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.start,

                     ),
                   ),
                  ],
                ),

              ],
            )
          ], */

        //   children:
        // Column(

        // ),
        //   ),
        //   ),
        //     );
        // ],
      ],
    );
  }
}
