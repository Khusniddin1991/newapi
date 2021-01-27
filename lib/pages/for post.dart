import 'package:flutter/material.dart';
import 'package:ui8/model/Post.dart';
import 'package:ui8/model/employee.dart';
import 'package:ui8/model/model_employee.dart';

import 'package:ui8/model/seprate_employe.dart';
import 'package:ui8/services/services.dart';




class OneObjects extends StatefulWidget {
  @override
  _OneObjectState createState() => _OneObjectState();
}
class _OneObjectState extends State<OneObjects> {
  dynamic name;
  dynamic age;
  dynamic salary;

  // int age,salary;
  Post one;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var post=Post(name: 'pdp online  \nis the best of \n the best',salary: 'is high',age: '20');
    oneObjects(post);
  }
  void oneObjects(post){
    Network.POST(Network.API_POST,Network.paramsPOST(post)).then((response) => {
      print(response),
      _showresponse(response)
    });



  }
  _showresponse(response){
    if(response!=null){
      PostObject result=Network.postCreate(response);


      setState(() {
        salary=result.data.salary;
        age=result.data.age;
        name=result.data.name;
      });


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
              Row(children: [
                Text(name.toString(),style: TextStyle(color: Colors.grey,fontSize:17),),
                Text(age.toString(),style: TextStyle(color: Colors.grey,fontSize:17),),

              ],),
              SizedBox(height: 10,),
              Text(salary.toString(),style: TextStyle(color: Colors.grey,fontSize:17),),




            ],),
          )


        ],)),
    );
  }
}
