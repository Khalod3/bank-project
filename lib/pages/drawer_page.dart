import 'package:bank_application/auth/login_or_reg.dart';
import 'package:bank_application/components/drawer_tile.dart';
import 'package:bank_application/pages/home_page.dart';
import 'package:bank_application/pages/settings_page.dart';
import 'package:flutter/material.dart';

class NewDrawer extends StatelessWidget {
  const NewDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 125),
              child: DrawerTile(
                icon: Icons.home,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                text: "Home",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: DrawerTile(
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                },
                text: "Settings",
              ),
            ),
            const Spacer(),
            DrawerTile(
              icon: Icons.logout,
              onTap: () {
                /*
                get out of the page 
                */
                Navigator.pop(context);
                /*
                go to the target page 
                */
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginOrRegister()));
              },
              text: "Logout ",
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ));
  }
}
