// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pro_employe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    EmployeeModel(
      id: json['id'] as int?,
      fname: json['f_name'] as String?,
      lname: json['l_name'] as String?,
      contact: json['contact'] as String?,
      mail: json['email'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$EmployeeModelToJson(EmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'f_name': instance.fname,
      'l_name': instance.lname,
      'contact': instance.contact,
      'email': instance.mail,
      'image': instance.image,
    };
