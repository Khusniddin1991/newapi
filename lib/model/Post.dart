class Post{

  String name;
  String salary;
   int id;
  String  age;

  Post({this.salary,this.age,this.name});
  Post.from({this.age,this.name,this.id});
  Post.fromJson(Map<String,dynamic> json):
          id=json['id'],
         name=json['name'],
         age=json['age'],
        salary=json['salary'];
        // data=json['data'];
  Map<String,dynamic> toJson(){
    return {
      'id':this.id,
      'salary':this.salary,
      // 'data':this.data,
      'age':this.age,
      'name':this.name
    };
  }
}
