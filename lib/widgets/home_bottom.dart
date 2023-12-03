

// ignore_for_file: must_be_immutable

import 'package:farwla_project/screens/number_screen.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  String label;
  String iconpath;
   Bottom({super.key,required this.label,required this.iconpath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>  const Number()),);
        },
        child: Container(
          decoration:  BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(16)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(iconpath,color: Colors.black,),
                Center(
                  child: Text(label,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                  ),
                ),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}