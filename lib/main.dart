import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';
import 'itemWidget.dart';

void main() {
  runApp(MyApp()/*MultiProvider(
      providers: [ChangeNotifierProvider(create: (conext) => Data() ),],
      child: MyApp()
  )*/
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
        icon: Image.asset('images/appbarr.PNG'), onPressed: () {  },
          ),
          title: Flexible(
            child: Column(
              children: const <Widget>[

              Text(
                "Welcome!",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),

              ),
                Text( "Fawzy Fawaz",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ],
            ),
          ),


        ),
        body: ListView.builder(
            itemCount: Data.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: Data.items[index]);
            }),
      ),
    );
  }
}
