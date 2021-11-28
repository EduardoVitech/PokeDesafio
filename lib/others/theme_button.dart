import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  ThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      alignment: Alignment.bottomLeft,
      width: MediaQuery.of(context).size.width,
      //====BOTÃO PARA TEMA ESCURO======
      child: FlatButton(
        onPressed: () {},
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
