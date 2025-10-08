import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
   final String name;
   final int aqe;
   final double price;
  const  DetailsPage({
     super.key,
    required this.name,
    required this.aqe,
    required this .price,
 }
);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Name: $name \n $aqe \n $price")),
    );
  }
}
