import 'package:flutter/material.dart';
import 'package:qici/utils/appTheme.dart';

class ProgressBarDemo extends StatefulWidget {
  @override
  _ProgressBarDemoState createState() => _ProgressBarDemoState();
}

class _ProgressBarDemoState extends State<ProgressBarDemo> {
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _startProgress();
  }

  void _startProgress() {
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _progress = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 10.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: AnimatedContainer(
        duration: Duration(seconds: 5),
        curve: Curves.linear,
        width: _progress * 0.01,
        height: 20.0,
        decoration: BoxDecoration(
          color: AppTheme.color.primaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
