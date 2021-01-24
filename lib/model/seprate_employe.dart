


import 'package:ui8/model/employee.dart';

class EmpOne{
  String massage;
  String status;
  Employee data;

  EmpOne.fromJson(Map <String,dynamic> json):
    data=Employee.fromJson(json['data']),
    massage=json['massage'],
    status=json['status'];



  Map <String,dynamic> toJson()=>{
  'massage':  massage,
    'status':  status,
    'data':data.toJson()

  };









}