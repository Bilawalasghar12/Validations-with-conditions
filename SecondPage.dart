import 'package:flutter/material.dart';
class SeconPage extends StatefulWidget {
  const SeconPage({Key? key}) : super(key: key);

  void main() {
    runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SeconPage(),
        ),
      ),
    );
  }

  @override
  State<SeconPage> createState() => _SeconPageState();
}

class _SeconPageState extends State<SeconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('hii')
      ],),
    );
  }
}
