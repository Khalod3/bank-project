import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today, Aug 07"),
                Row(
                  children: [
                    Text("All Transactions"),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 7),
            child: ListTile(
              title: Text("Gym Subscription"),
              subtitle: Text("01:45PM"),
              //textColor: Theme.of(context).colorScheme.inversePrimary,
              trailing: Text("- 300.00 SAR",
                  style: TextStyle(
                    color: Color.fromARGB(255, 122, 47, 47),
                  )),
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 7),
            child: ListTile(
              title: Text("Transfer"),
              subtitle: Text("10:56AM"),
              trailing: Text(
                "+ 1,328.00 SAR",
                style: TextStyle(color: Colors.teal),
              ),
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 7),
            child: ListTile(
              title: Text("Sadad Payment"),
              subtitle: Text("06:30AM"),
              trailing: Text(
                "- 700.00 SAR",
                style: TextStyle(
                  color: Color.fromARGB(255, 122, 47, 47),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
