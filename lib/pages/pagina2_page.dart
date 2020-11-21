import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:estados/models/usuario.dart';
import 'package:estados/bloc/usuario/usuario_bloc.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                final Usuario newUser = new Usuario(
                    edad: 14,
                    nombre: 'Pocholo',
                    profesiones: ['Asesino', 'Criminal✔']);
                BlocProvider.of<UsuarioBloc>(context)
                    .add(ActivarUsuario(newUser));
              },
              child: Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                BlocProvider.of<UsuarioBloc>(context).add(CambiarEdad(5));
              },
              child: Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                BlocProvider.of<UsuarioBloc>(context).add(AgregarProfesion(profesion: 'GRITAR'));
              },
              child: Text(
                'Anadir Profesion',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                BlocProvider.of<UsuarioBloc>(context).add(ResetUsuario());
              },
              child: Text(
                'Borrar DATOS, reset Usuario',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
