import 'package:flutter/material.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.account_box, size: 30, color:const Color.fromARGB(255, 219, 127, 57)),
          SizedBox(height: 20),
          Text('الحساب', style: TextStyle(fontSize: 24, color:const Color.fromARGB(255, 219, 127, 57))),
        ],
      ),
    );
  }
}
