import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:local_storage/cubit/user_state.dart';
import 'package:local_storage/user.dart';

class UserCubit extends HydratedCubit<UserState> {
  UserCubit() : super(UserState());

  Future<void> addUser(User user) async {
    emit(state.copyWith(users: [...state.users, user]));
  }

  @override
  UserState? fromJson(Map<String, dynamic> json) {
    try {
      return UserState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    try {
      return state.toJson();
    } catch (_) {
      return null;
    }
  }
}
