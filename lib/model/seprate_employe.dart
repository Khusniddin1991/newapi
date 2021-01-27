


import 'package:ui8/model/employee.dart';

import 'Employees.dart';

class EmpOne{
  String message;
  String status;
  Employees data;

  EmpOne.fromJson(Map <String,dynamic> json):
    data=Employees.fromJson(json['data']),
    message=json['message'],
    status=json['status'];



  Map <String,dynamic> toJson()=>{
  'message':  message,
    'status':  status,
    'data':data.toJson()

  };









}