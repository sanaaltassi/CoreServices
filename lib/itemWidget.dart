import 'package:flutter/material.dart';
import 'data.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      child: Padding( padding:EdgeInsets.all(25.0),
        child: Card(
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(item.name, style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 12)),
                ),
              ),

              leading: Image.asset(
                item.image,
                height: 200,
                width: 120,
              ),
              subtitle: Center(child: Text(item.desc, style: TextStyle(color: Colors.purple, fontSize: 10))),
              trailing: Text(
                "${item.status}",
                style: const TextStyle(color: Colors.black, fontSize: 11),
              ),
            ),

          ),
        ),
      ),
    );
  }
}