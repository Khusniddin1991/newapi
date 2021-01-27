import 'Post.dart';

class PostObjects {
  String status, message;
  Post data;

  PostObjects({this.data, this.status, this.message});

  PostObjects.fromJson(Map<String, dynamic>json)
      :
        this.data=Post.fromJson(json['data']),
        this.status=json['status'],
        this.message=json['message'];

  Map<String, dynamic> toJson() =>
      {
        'data': this.data.toJson(),
        'status': this.status,
        'message': this.message
      };
}