// Els esdeveniments són accions que l'app anirà disparant
//i seguidament canviarà l'estat de l'aplicació, basicament
//canvis en l'app

part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User user;
  ActivateUser(this.user);
}

class ChangeUserAge extends UserEvent {
  final int age;
  ChangeUserAge(this.age);
}

class AddUserJob extends UserEvent {
  final String job;
  AddUserJob(this.job);
}

class DeleteUser extends UserEvent {}
