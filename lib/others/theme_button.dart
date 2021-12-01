import 'package:flutter/material.dart';
import 'package:poke_api/main.dart';

class ThemeButton extends StatefulWidget {
  ThemeButton({Key? key}) : super(key: key);

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      alignment: Alignment.bottomLeft,
      width: MediaQuery.of(context).size.width,
      //====BOTÃO PARA TEMA ESCURO======
      child: FlatButton(
        onPressed: () {
          if (theme == lightTheme) {
            setState(() => theme = darkTheme);
            print("darkTheme");
          } else if (theme == darkTheme) {
            setState(() => theme = lightTheme);
            print("lightTheme");
          }
        },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        //======DECORAÇÃO DO CONTAINER=======
        child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width / 2.5,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: const BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //======ICONE=====
              Icon(
                Icons.mode_night,
                color: Colors.grey.shade300,
              ),
              //======TEXTO=====
              Text(
                'Tema Escuro',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
