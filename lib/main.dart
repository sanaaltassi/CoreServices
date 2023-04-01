import 'package:corereservation/Style/colorstyle.dart';
import 'package:corereservation/providers/providerfacilitiestate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'LoginPage/login.dart';
import 'setting/facility.dart';
import 'home.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (conext) => FaciitiesPageState()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //body:Login();
        appBar: AppBar(
          backgroundColor: ColorStyle.backGround,
          leading:CircleAvatar(
            backgroundColor: ColorStyle.backGround,
            radius: 40,
            child: const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(
                "images/appbarr.PNG",
              ),
            ),
          ),

          title: Flexible(
            child: Column(
              children: <Widget>[
                Text(
                  "Welcome!",
                  style: TextStyle(
                    color: ColorStyle.text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Fawzy Fawaz",
                  style: TextStyle(
                    color: ColorStyle.text,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
         // body: Login(),
        body: ListView.builder(
            itemCount: Data.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: Data.items[index]);
            }),

      ),
    );

  }
}
