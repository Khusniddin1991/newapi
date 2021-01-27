import 'package:flutter/material.dart';
import 'package:ui8/model/employee.dart';

class RoutPage extends StatefulWidget {
  Employee members;
  RoutPage({this.members});

  // dynamic val;
  // RoutPage({this.val});
  static final String id='casc';
  @override
  _RoutPageState createState() => _RoutPageState();
}

class _RoutPageState extends State<RoutPage> {
  @override
  Employee members;
  Widget build(BuildContext context) {
    dynamic emp=ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title:Text(''),),
      backgroundColor: Colors.white,
      body:Center(child: Column(
        children: [
          Text(widget.members.employee_name)
        ],
      ),) ,

    );
  }
}



