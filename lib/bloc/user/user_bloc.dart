// User Bloc contindrà la informació de l'estat actual i processa els esdeveniments
import 'package:bloc/bloc.dart';
import 'package:estados/models/user.dart';
import 'package:flutter/material.dart';

part 'user_state.dart';
part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitState()) {
    on<ActivateUser>((event, emit) {
      print('ActivateUser called');
      emit(UserSetState(event.user));
    });

    on<ChangeUserAge>((event, emit) {
      print('ChangeUserAge called');
      if (!state.existeixUsuari) return;
      emit(UserSetState(state.usuari!.copyWith(edad: event.age)));
    });

    on<AddUserJob>((event, emit) {
      print('AddUserJob called');
      if (!state.existeixUsuari) return;
      List<String> professions = state.usuari!.profesiones!;
      professions.add(event.job);
      emit(UserSetState(state.usuari!.copyWith(profesiones: professions)));
    });

    on<DeleteUser>((event, emit) => emit(const UserInitState()));
  }
}
