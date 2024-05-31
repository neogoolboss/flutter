import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/bmi');
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: '체질량')
        ],
      ),
    );
  }
}
