import 'package:bank_application/components/button1.dart';
import 'package:bank_application/components/text_field.dart';
import 'package:bank_application/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController accountController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.monetization_on_outlined,
                size: 72, color: Theme.of(context).colorScheme.inversePrimary),

            const SizedBox(height: 25),

            Text(
              "THE ULTIMATE BANK APPLICATION",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),
            //email textfield
            Textfield1(
              controller: accountController,
              hintText: "account number",
              obscureText: false,
            ),
            const SizedBox(height: 10),
            //password textfield
            Textfield1(
              controller: passwordController,
              hintText: "password",
              obscureText: true,
            ),
            const SizedBox(height: 25),

            //sign in button
            Button1(
              text: "Sign In",
              onTap: login,
            ),

            const SizedBox(height: 25),

            //not a member?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),

                //encourage the user to tap on it
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Get your new card",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
