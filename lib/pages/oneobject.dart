import 'package:flutter/material.dart';
import 'package:ui8/model/employee.dart';

import 'package:ui8/model/seprate_employe.dart';
import 'package:ui8/services/services.dart';




class OneObject extends StatefulWidget {
  @override
  _OneObjectState createState() => _OneObjectState();
}
class _OneObjectState extends State<OneObject> {
  String name;
  int age,salary;
  void oneObject(int id){
    Network.GETs(Network.API_GETs+id.toString(),Network.params()).then((response) => {
      print(response),
      _showresponse(response)
    });


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    oneObject(1);
  }

  _showresponse(response){
    if(response!=null){
      EmpOne parseOnes=  Network.parseOne(response);
      print(parseOnes.data.employee_salary);


      setState(() {
        name=parseOnes.data.employee_name;
        salary=parseOnes.data.employee_salary;
        age=parseOnes.data.employee_age;
      });

    }
    else{
      print(null);
    }





  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('emp single'),
        centerTitle:true,
      ),
      backgroundColor:  Colors.white,
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 130),
            child: Column(children: [

              Text(name+'('+age.toString()+")",style: TextStyle(color: Colors.grey,fontSize:17),),
              SizedBox(height: 15,),
              Text(salary.toString())

            ],),
          )


      ],)),
    );
  }
}
