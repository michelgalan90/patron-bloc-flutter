import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:estados/models/usuario.dart';

part 'usuario_state.dart';

part 'usuario_event.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  UsuarioBloc() : super(UsuarioState());

  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
    if (event is ActivarUsuario) {
      print('${event.usuario.nombre}');
      //usando el state.copyWith nos aseguramos de siempre enviar un nuevo UsuarioState una nueva referencia a memoria y el anterior eliminarlo...siempre con copyWith creamos una nueva instancia de UsuarioState y la devolvemos con el nuevo user
      yield state.copyWith(user: event.usuario);
    } else if (event is ResetUsuario) {
      
      yield state.estadoInicial();
      //yield UsuarioState(); //esto tambien haria lo mismo de arriba de forma mas facil
    } else if (event is CambiarEdad) {
      if (state.existeUsuario) {
        Usuario newUser = state.usuario.copyWith(edad: event.edad);
        yield state.copyWith(user: newUser);
      }
    } else if (event is AgregarProfesion) {
      if (state.existeUsuario) {
        List<String> newProf = [...state.usuario.profesiones, event.profesion];
        Usuario newUser = state.usuario.copyWith(profesiones: newProf);
        yield state.copyWith(user: newUser);

        /*

        // un poco mas simplificado todo en la misma instruccion pero mas dificil de leer. De tomas formas este metodo y el de arriba funcionan perfectamente

        yield UsuarioState(user: 
        state.usuario.copyWith(profesiones: [...state.usuario.profesiones, event.profesion]));
        
        */
      }
    }
  }
}
