import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const DrawerItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: Colors.blue),
      title: Text(title),
      onTap: (){
        Navigator.pop(context);
      },
    );
  }
}
