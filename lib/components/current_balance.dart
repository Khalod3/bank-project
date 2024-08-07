import 'package:flutter/material.dart';

class CurrentBalance extends StatefulWidget {
  const CurrentBalance({super.key});

  @override
  State<CurrentBalance> createState() => _CurrentBalanceState();
}

class _CurrentBalanceState extends State<CurrentBalance> {
  bool showBalance = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 80,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Current Balance',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (showBalance)
                  const Text(
                    '10000.00 SAR',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                if (!showBalance)
                  const Text(
                    '*****.**',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                const SizedBox(width: 16.0),
                IconButton(
                  icon: Icon(showBalance
                      ? Icons.remove_red_eye
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      showBalance = !showBalance;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
