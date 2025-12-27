import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_commerce/core/constants/app_urls.dart';
import 'package:mobile_commerce/core/services/api_service.dart';
import 'package:mobile_commerce/core/services/pref_service.dart';
import 'package:mobile_commerce/features/auth/bloc/auth_event.dart';
import 'package:mobile_commerce/features/auth/bloc/auth_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  APIService apiService;

  UserBloc({required this.apiService}) : super(UserInitialState()) {
    on<UserRegisterEvent>((event, emit) async {
      emit(UserLoadingState());

      try {
        var responseBody = await apiService.postAPI(
          url: AppUrls.signUp,
          mBody: {
            "name": event.name,
            "mobile_number": event.mobNo,
            "email": event.email,
            "password": event.pass,
          },
        );

        if (responseBody["status"] == true) {
          final SharedPreferences pref = await SharedPreferences.getInstance();
          debugPrint("User JWT Token from API: ${responseBody['token']}");
          pref.setString(SharedPrefService.jwtToken, responseBody['token']);
          debugPrint(
            "SharedPref JWT Token ${pref.getString(SharedPrefService.jwtToken)}",
          );
          emit(UserSuccessState());
        } else {
          emit(UserFailureState(errorMsg: responseBody["message"]));
        }
      } catch (e) {
        emit(UserFailureState(errorMsg: e.toString()));
      }
    });

    on<UserLoginEvent>((event, emit) async {
      emit(UserLoadingState());

      try {
        var responseBody = await apiService.postAPI(
          url: AppUrls.login,
          mBody: {"email": event.email, "password": event.pass},
        );

        if (responseBody["status"]) {
          print(
            "Login API Response Status Code ${responseBody['status']} and Token ${responseBody['tokan']}",
          );
          final SharedPreferences pref = await SharedPreferences.getInstance();
          debugPrint("User JWT Token from API: ${responseBody['tokan']}");
          pref.setString(SharedPrefService.jwtToken, responseBody['tokan']);
          debugPrint(
            "SharedPref JWT Token ${pref.getString(SharedPrefService.jwtToken)}",
          );

          emit(UserSuccessState());
        } else {
          emit(UserFailureState(errorMsg: responseBody["message"]));
        }
      } catch (e) {
        emit(UserFailureState(errorMsg: e.toString()));
      }
    });
  }
}
