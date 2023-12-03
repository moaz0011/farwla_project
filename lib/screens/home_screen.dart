import 'package:farwla_project/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/home_bottom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.08, horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.notifications_active),
                  ),
                  Image.asset(logopath),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.settings),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "Search Service",
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                ),
              ),
              Bottom(label: "Register subjects",iconpath: "assets/R.png",),
              Bottom(label: "University expenses",iconpath: "assets/money.png",),
              Bottom(label: "Student fairs",iconpath: "assets/account.png",),
              Bottom(label: "Graduate fairs ",iconpath: "assets/student.png",),
              Bottom(label: "IT center",iconpath: "assets/pc.png",),
            ],
          ),
        ),
      ),
    );
  }
}
