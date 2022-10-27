// Contindrà quin és l'estat de l'app, la situació de les variables,
//i l'entorn de l'app en diferents estats possibles.

part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final bool existeixUsuari;
  final User? usuari;

  const UserState({this.existeixUsuari = false, this.usuari});
}

class UserInitState extends UserState {
  const UserInitState() : super(existeixUsuari: false, usuari: null);
}

class UserSetState extends UserState {
  final User nouUsuari;

  const UserSetState(this.nouUsuari)
      : super(existeixUsuari: true, usuari: nouUsuari);
}
