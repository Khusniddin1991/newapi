import 'dart:core';

import 'package:flutter/material.dart';
import 'package:ui8/model/Post.dart';
import 'package:ui8/model/emp_list.dart';
// import 'package:ui8/model/employeaa.dart';
import 'package:ui8/model/employee.dart';
import 'package:ui8/model/seprate_employe.dart';
// import 'package:ui8/pages/eploye.dart';
import 'package:ui8/pages/newRoute.dart';
import 'package:ui8/services/services.dart';

import 'oneobject.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data;



  List<Employee> items=List();


  show(String value) {
    setState(() {
      data = value;
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiget();
    // apiOne(1);
  }
  apiget(){

    Network.GET(Network.API_GET, Network.params()).then((response) =>{
    _showResponse(response),
      print(response)
    }
    );
  }
   _showResponse(String  response){
    if(response!=null){
    EmpList info= Network.parseList(response);

     print(info.data.first.employee_name);
    setState(() {
      items=info.data;
    });

   } else{
      print('try again later');
    }
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(backgroundColor: Colors.white,
        body:Container(child: ListView.builder(itemCount:items.length,itemBuilder:(ctx,i){
          Employee emo=items[i];
          return GestureDetector(
            onTap: (){
           Navigator.push(context,MaterialPageRoute(builder:(ctx)=>OneObject()));
            },
            child: Card(
              child: itemFunction(items[i]

              ),
            ),
          );
        })
        ),);

    }

  Widget itemFunction(Employee value) {
    return Container(
         padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(value.employee_name+'('+value.employee_age.toString()+")",style: TextStyle(fontSize:20),),
          SizedBox(height: 10,),
          Text(value.employee_salary.toString())
        ],
      ),
    );
  }
  }



@override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

