import 'package:flutter/material.dart';
import 'package:ui8/model/Post.dart';
import 'package:ui8/model/employee.dart';
import 'package:ui8/model/model_employee.dart';
import 'package:ui8/model/new%20update.dart';

import 'package:ui8/model/seprate_employe.dart';
import 'package:ui8/services/services.dart';




class OneObjectss extends StatefulWidget {
  @override
  _OneObjectState createState() => _OneObjectState();
}
class _OneObjectState extends State<OneObjectss> {
  dynamic name;
  dynamic age;
  dynamic salary;

  // int age,salary;
  Post one;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var post=Post.from(name: 'pdp online  \nis the best of \n the best',id:10,age: '20');
    object(post);
  }
  void object(post){
    Network.PUT(Network.API_CREATE,Network.paramsPUT(post)).then((response) => {
      print(response),
      _showresponse(response)
    });



  }
  _showresponse(response){
    if(response!=null){
      PostObjects result=Network.postUpdate(response);


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
