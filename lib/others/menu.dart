import 'package:flutter/material.dart';

class MenuButtons extends StatefulWidget {
  @override
  State<MenuButtons> createState() => _MenuButtonsState();
}

class _MenuButtonsState extends State<MenuButtons> {
  @override

  //Utilizado pra fazer a mudança
  //dos botões quando precionados.
  int _current = 0;
  void escolherOp(op) {
    setState(() {
      _current = op;
    });
  }

  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            //======BOTÃO FAVORITOS======
            child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/homePage');
          },
          splashColor: Colors.white,
          child: const SizedBox(
            height: 50,
            child: Center(
              child: Text(
                "Favoritos",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )),
        Expanded(
          //======BOTÃO PROCURAR=======
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/searchPage');
            },
            child: const SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  "Procurar",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          //======BOTÃO VER TODOS======
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/allPage');
            },
            child: const SizedBox(
              height: 50,
              child: Center(
                child: Text(
                  "Ver todos",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
