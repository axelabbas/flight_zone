import 'package:freezed_annotation/freezed_annotation.dart';

part 'loginModels.g.dart';

@JsonSerializable()
class LoginRequestModel {
  @JsonKey(name: 'phone_number')
  String phoneNumber;
  String password;

  LoginRequestModel({
    required this.phoneNumber,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}

@JsonSerializable()
class LoginResponseModel {
  String? message;
  String? token;
  int? code;

  LoginResponseModel({
    this.message,
    this.token,
    this.code,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
