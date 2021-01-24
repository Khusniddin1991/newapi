class Employee{
  int age,salary;
  String name,image;


  Employee({this.name,this.age,this.image,this.salary});

  Employee.fromJson(Map <String,dynamic> json){
    this.salary=json['name'];
    this.age=json['age'];
    this.image=json['image'];
    this.salary=json['salary'];








  }




  Map <String,dynamic> toJson()=>{
    'name':name,
    'age':age,
    'salary':salary,
    'image':image,
  };








}