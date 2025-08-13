import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:local_storage/user.dart';

part 'user_state.g.dart';

@JsonSerializable()
@CopyWith()
class UserState extends Equatable {
  const UserState({this.users = const []});
  final List<User> users;
  @override
  List<Object> get props => [users];

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);

  Map<String, dynamic> toJson() => _$UserStateToJson(this);
}
