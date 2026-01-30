import 'package:calculatorapp/view/Drawer.dart';
import 'package:calculatorapp/widgets/saleschart.dart';
import 'package:flutter/material.dart';

import '../widgets/actitvityitem.dart';
import '../widgets/infocard.dart';
import '../widgets/stateCard.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),

      /// 🔹 Drawer
      drawer: const DashDrawer(),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Welcome, User!",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications, color: Colors.black),
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// 🔹 Stats Cards
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 1.6,
              children: const [
                StatCard(
                  title: "Sales",
                  value: "120",
                  icon: Icons.shopping_cart,
                  color: Colors.blue,
                ),
                StatCard(
                  title: "Users",
                  value: "35",
                  icon: Icons.people,
                  color: Colors.indigo,
                ),
                StatCard(
                  title: "Revenue",
                  value: "\$2.5k",
                  icon: Icons.attach_money,
                  color: Colors.green,
                ),
                StatCard(
                  title: "Tasks",
                  value: "8",
                  icon: Icons.task,
                  color: Colors.orange,
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// 🔹 Sales Overview
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sales Overview",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    const SalesChart(),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// 🔹 Recent Activity
            const InfoCard(
              title: "Recent Activity",
              child: Column(
                children: [
                  ActivityItem(text: "New order placed"),
                  ActivityItem(text: "Task completed"),
                  ActivityItem(text: "New user registered"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

