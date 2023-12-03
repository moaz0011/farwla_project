// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PickDate extends StatelessWidget {
  const PickDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DatePikerTextFiled(
          label: 'Year',
        ),
        DatePikerTextFiled(
          label: 'Month',
        ),
                DatePikerTextFiled(
          label: 'Day',
        ),
      ],
    );
  }
}

class DatePikerTextFiled extends StatelessWidget {
  String label;
  DatePikerTextFiled({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 40,
      child: TextField(
        style: const TextStyle(height: 3),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: label,
          hintMaxLines: 1,
          hintStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.w300,),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          
        ),
      ),
    );
  }
}
