// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:project/utilis/dataresponse.dart';
import 'package:project/utilis/url.dart';
class UserDataSource{
Dio client = Dio();
Future<DoubleResponse> userLogin(
 {required String? password, required String? contact}) async {
//  User authenticatedUser;
 
 print("contact.... $contact");
 print("contact.... $password");
 final response = await client.post(
 FigmaUrl.loginUrl,
 data: {
 "user_name": contact,
 "password": password,
 },
 options: Options(
 headers: {
 'Content-Type': 'application/json',
 'Accept': 'application/json',
 },
 ),
 );
 
 
 return DoubleResponse(
 response.data['status'] == 'success', response.data['message']);
 }
}