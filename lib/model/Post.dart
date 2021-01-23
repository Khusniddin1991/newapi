class Post{
  int id;
  String number,name;
  String status;
  String data;
  int  age;

  Post({this.id,this.status,this.data,this.age,this.name,this.number});
  Post.from({this.id,this.number,this.name});
  Post.fromJson(Map<String,dynamic> json):
        id=json['id'],
         name=json['name'],
         age=json['age'],
        status=json['status'],
        data=json['data'];
  Map<String,dynamic> toJson(){
    return {
      'id':this.id,
      'status':this.status,
      'data':this.data,
      'age':this.age,
      'name':this.name
    };
  }
}
