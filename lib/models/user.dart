class User {
  String? nombre;
  int? edad;
  List<String>? profesiones;

  User({this.nombre, this.edad, this.profesiones});

  copyWith({
    String? nombre,
    int? edad,
    List<String>? profesiones,
  }) =>
      User(
        nombre: nombre ?? this.nombre,
        edad: edad ?? this.edad,
        profesiones: profesiones ?? this.profesiones,
      );
}
