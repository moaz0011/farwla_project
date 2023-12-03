// ignore: file_names
import 'package:farwla_project/constants.dart';
import 'package:farwla_project/screens/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBotton extends StatelessWidget {
  String label;
   MyBotton({super.key,required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) =>  const HomeScreen()),);
      },
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Center(
          child: Text(label,
          style: const TextStyle(fontWeight: FontWeight.w400,
          fontSize: 15
          ),
          ),
        ),
      ),
    );
  }
}