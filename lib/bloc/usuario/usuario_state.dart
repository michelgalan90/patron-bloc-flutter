part of 'usuario_bloc.dart';

class UsuarioState {
  final bool existeUsuario;
  final Usuario usuario;

  UsuarioState({Usuario user})
      : usuario = user ?? null,
        existeUsuario = user != null ? true : false;

  UsuarioState copyWith({Usuario user}) {
    //con esto nos aseguramos que cada vez que llamemos a copyWith se mande una nueva instancia de UsuarioState, una nueva referencia a memoria, que no es la misma que existia...
    return UsuarioState(user: user ?? this.usuario);
  }

  //metodo exclusivamente para reiniciar 
 // el estado inicial con user null y existeUsuario false
  UsuarioState estadoInicial() {
    return new UsuarioState();
  }
}
