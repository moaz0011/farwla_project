import 'package:farwla_project/constants.dart';
import 'package:farwla_project/screens/login_screen.dart';
import 'package:farwla_project/widgets/Ginder_picker.dart';
import 'package:farwla_project/widgets/mainBotton.dart';
import 'package:farwla_project/widgets/mytextfeild.dart';
import 'package:flutter/material.dart';

import '../widgets/pick_date.dart';

class SignUP extends StatelessWidget {
  SignUP({super.key});
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.08, horizontal: width * 0.05),
          child: Column(
            children: [
              Image.asset(logopath),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              MyTextFiled(
                  controller: userNameController,
                  hint: "UserName",
                  icon: Icons.person,
                  isPassword: false),
              MyTextFiled(
                  controller: emailController,
                  hint: "Email Adress",
                  icon: Icons.email_outlined,
                  isPassword: false),
              MyTextFiled(
                  controller: passwordController,
                  hint: "Password",
                  icon: Icons.lock,
                  isPassword: true),
              MyTextFiled(
                  controller: confirmPasswordController,
                  hint: "confirm",
                  icon: Icons.lock,
                  isPassword: true),
              MyTextFiled(
                  controller: phoneController,
                  hint: "phone",
                  icon: Icons.phone,
                  isPassword: false,
                  isNumber: true,
                  ),
              const PickDate(),
              const SizedBox(
                height: 10,
              ),
              const GenderWidget(),
              const SizedBox(
                height: 10,
              ),
              MyBotton(label: "Sgin Up"),
              const SizedBox(height: 5,),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text(
                  "Switch Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                    decorationThickness:
                        1.0, // Adjust the thickness of the underline
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
