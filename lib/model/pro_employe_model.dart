import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'pro_employe_model.g.dart';
@JsonSerializable()
class EmployeeModel extends Equatable{
 @JsonKey(name: "id")
 final int? id;
  @JsonKey(name: "f_name")
 final String? fname;
  @JsonKey(name: "l_name")
 final String? lname;
  @JsonKey(name: "contact")
 final String? contact;
  @JsonKey(name: "email")
 final String? mail;
  @JsonKey(name: "image")
 final String? image;
 
 const EmployeeModel({this.id,this.fname,this.lname,this.contact,this.mail,this.image});
 
 @override
 List<Object> get props => [];
 
 factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
 _$EmployeeModelFromJson(json);
 
 Map<String, dynamic> toJson() => _$EmployeeModelToJson(this);
}