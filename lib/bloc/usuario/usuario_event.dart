part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvent {}

class ActivarUsuario extends UsuarioEvent {
  final Usuario usuario;

  ActivarUsuario(this.usuario);
}

class ResetUsuario extends UsuarioEvent {}

class CambiarEdad extends UsuarioEvent {
  final int edad;

  CambiarEdad(this.edad);
}

class AgregarProfesion extends UsuarioEvent {
  final String profesion;

  AgregarProfesion({this.profesion});
}
