import 'package:flutter/material.dart';
import 'package:ui8/model/Post.dart';
import 'package:ui8/model/emp_list.dart';
import 'package:ui8/model/seprate_employe.dart';
import 'package:ui8/services/services.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data;


  show(String value) {
    setState(() {
      data = value;
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // apiget();
    apiOne(1);
  }
  // apiget(){
  //
  //   Network.GET(Network.API_GET, Network.params()).then((response) =>{
  //     // show(value),
  //   _showResponse(response)
  //
  //   }
  //   );
  // }
  //
  //
  apiOne(int id){

    Network.GET(Network.API_GETs+id.toString(), Network.params()).then((response) =>{
      // show(value),
      _showResponse(response),
      print(response)

    }
    );
  }





  void _showResponse(String  response){
    // EmpList info=Network.parseList(response);
    // print(info.data.length);
    EmpOne info=Network.parseOne(response);
    print(info.data.age);

  }






    @override
    Widget build(BuildContext context) {
      return Scaffold(backgroundColor: Colors.white,
        body: Text(''),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

