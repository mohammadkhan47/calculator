import 'package:flutter/material.dart';

import '../widgets/draweritem.dart';

class DashDrawer extends StatefulWidget {
  const DashDrawer({super.key});

  @override
  State<DashDrawer> createState() => _DashDrawerState();
}

class _DashDrawerState extends State<DashDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          /// 🔹 Drawer Header
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 32),
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mohammad",
                      style:
                      TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Admin",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// 🔹 Drawer Items
          DrawerItem(icon: Icons.dashboard, title: "Dashboard"),
          DrawerItem(icon: Icons.analytics, title: "Analytics"),
          DrawerItem(icon: Icons.shopping_cart, title: "Orders"),
          DrawerItem(icon: Icons.people, title: "Users"),
          DrawerItem(icon: Icons.settings, title: "Settings"),

          const Spacer(),

          const Divider(),
          DrawerItem(icon: Icons.logout, title: "Logout"),
        ],
      ),
    );
  }
}
