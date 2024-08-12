import 'package:bank_application/components/credit_card.dart';
import 'package:bank_application/components/current_balance.dart';
import 'package:bank_application/components/transaction_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome back!",
                        style: TextStyle(),
                      ),
                      Text(
                        "Khulud Alotaibi ",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton.outlined(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  const Positioned(
                    top: 20,
                    left: 25,
                    right: 25,
                    child: CreditCard(),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 167),
                    color: Theme.of(context).colorScheme.surface,
                    child: const Column(
                      children: [
                        SizedBox(height: 90),
                        CurrentBalance(),
                        SizedBox(height: 20),
                        TransactionList()
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
