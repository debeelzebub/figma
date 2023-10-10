// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:project/model/pro_employe_model.dart';
import 'package:project/model/profile_model.dart';
import 'package:project/utilis/url.dart';

class ProfileDataSource{
  Dio client=Dio();

   Future<List<ProfileModel>> getprofilelist()async{
    List<ProfileModel> profilelistdata=[];
    final response = await client.get(ProfileUrl.url);

    (response.data['data'] as List).forEach((element) {
      profilelistdata.add(ProfileModel.fromJson(element));
    });
    return profilelistdata;
  }

   Future<EmployeeModel> getemployeedetails({required int? id})async{
    EmployeeModel? employeedata;
    final response = await client.get(ProfileDataUrl.url+id.toString());
    
    employeedata = EmployeeModel.fromJson(response.data['data']);
    return employeedata;
   }
  
}