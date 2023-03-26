// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponseBS _$ProfileResponseBSFromJson(Map<String, dynamic> json) =>
    ProfileResponseBS(
      image: json['image'] as String?,
      username: json['username'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProfileResponseBSToJson(ProfileResponseBS instance) =>
    <String, dynamic>{
      'image': instance.image,
      'username': instance.username,
      'balance': instance.balance,
    };
