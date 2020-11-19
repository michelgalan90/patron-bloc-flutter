import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

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
              onPressed: () {},
              child: Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Anadir Profesion',
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
