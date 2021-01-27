
import 'Post.dart';

class PostObject{
  String status,message;
  Post data;

  PostObject({this.data,this.status,this.message});

  PostObject.fromJson(Map<String,dynamic>json):
        this.data=Post.fromJson(json['data']),
         this.status=json['status'],
          this.message=json['message'];

  Map<String,dynamic> toJson()=>{
    'data':this.data.toJson(),
    'status': this.status,
    'message':this.message

  };


}



