import 'package:flutter/material.dart';

class NotiFication extends StatefulWidget {
  const NotiFication({Key? key}) : super(key: key);

  @override
  State<NotiFication> createState() => _NotiFicationState();
}

class _NotiFicationState extends State<NotiFication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Notification page',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
