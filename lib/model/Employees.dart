class Employees{

  String employee_name,profile_image;
  int employee_age, employee_salary;


  Employees({this.employee_name,this.employee_age,this.profile_image,this.employee_salary});

  Employees.fromJson(Map <String,dynamic> json){
    // this.id=json[id];
    this.employee_name=json['employee_name'];
    this.employee_age=json['employee_age'];
    this.profile_image=json['profile_image'];
    this.employee_salary=json['employee_salary'];
  }
  Map <String,dynamic> toJson()=>{
    // 'id':id,
    'employee_name':employee_name,
    'employee_age':employee_age,
    'employee_salary':employee_salary,
    'profile_image':profile_image,
  };








}