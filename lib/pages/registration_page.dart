import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/text_field.dart';

class RegistrationPage extends StatefulWidget {
  final void Function()? onTap;

  const RegistrationPage({super.key, required this.onTap});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  // final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 20,
            ),

            //app slogan
            Text(
              "Create an Account",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            //email
            CustomTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false),
            SizedBox(
              height: 10,
            ),
            //enter password
            CustomTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),
            SizedBox(
              height: 10,
            ),
            //confirm password
            CustomTextField(
                controller: passwordController,
                hintText: "Confirm Password",
                obscureText: true),
            SizedBox(
              height: 10,
            ),
            CustomButton(onTap: () {}, text: "Sign Up"),
            SizedBox(
              height: 25,
            ),

            //already have an account?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
