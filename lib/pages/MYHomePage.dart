import 'package:flutter/material.dart';
import 'package:ui8/model/Post.dart';
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
    Post post = new Post(age: 2, name: 'kaml', status: 'nomal', id: 21);
    apiPost(post);

    apiDEL();
  }

  void apiPUT(Post post) async {
    await Network.PUT(Network.API_CREATE + post.id.toString(), Network.params())
        .then((value) =>
    {
      print(value),
      show(value)
    });
  }

  void apiDEL() async {
    await Network.DEL(Network.API_DELETE, Network.params()).then((value) =>
    {
      print(value),
      show(value)
    });
  }

  //
  apiPost(post) async {
    await Network.POST(Network.API_POST, Network.paramsPOST(post)).then((
        value) =>
    {
      print(value),
      show(value)
    });
    //
    apiPUT(post) async {
      await Network.PUT(Network.API_POST, Network.paramsPUT(post)).then((
          value) =>
      {
        print(value),
        show(value)
      });
    }


    @override
    Widget build(BuildContext context) {
      return Scaffold(backgroundColor: Colors.white,
        body: Center(child: Text(data != null ? data : 'there is no data'),),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}