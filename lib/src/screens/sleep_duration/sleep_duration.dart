import 'package:flutter/material.dart';
import 'package:productivity/src/widgets/appbar.dart';

class SleepDurationScreen extends StatefulWidget {
  @override
  _SleepDurationScreenState createState() => _SleepDurationScreenState();
}

class _SleepDurationScreenState extends State<SleepDurationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        // showTitle: ,
      ),
    );
  }
}