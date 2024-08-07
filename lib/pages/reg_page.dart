import 'package:bank_application/components/button1.dart';
import 'package:bank_application/components/text_field.dart';
import 'package:bank_application/pages/home_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo

            Icon(Icons.monetization_on_outlined,
                size: 72, color: Theme.of(context).colorScheme.inversePrimary),

            const SizedBox(height: 25),

            //message
            Text(
              "Creating a new card",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),
            //name textfield
            Textfield1(
              controller: nameController,
              hintText: "name",
              obscureText: false,
            ),
            const SizedBox(height: 10),

            //email textfield
            Textfield1(
              controller: emailController,
              hintText: "email",
              obscureText: false,
            ),
            const SizedBox(height: 10),

            //password textfield
            Textfield1(
              controller: passwordController,
              hintText: "password",
              obscureText: true,
            ),
            const SizedBox(height: 10),

            //confirm password textfield
            Textfield1(
              controller: confirmPasswordController,
              hintText: "confirm password",
              obscureText: true,
            ),
            const SizedBox(height: 25),

            //sign up button
            Button1(
                text: "Sign Up",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()))),

            const SizedBox(height: 25),

            //already have a card ?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "already have a card? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("sign in",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
