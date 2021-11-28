import 'package:flutter/material.dart';

class ExitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: MediaQuery.of(context).size.width,
      //======BOTÃO SAIR=========
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/loginPage');
        },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        //======DECORAÇÃO DO CONTAINER======
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width / 3.4,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.7),
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //=====TEXTO=======
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  'Sair',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
              ),
              //=====SPACER=====
              //Usado para dar o distanceamento
              //entre o texto e o icone.
              const Spacer(),
              //====ICONE=====
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(
                  Icons.exit_to_app,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
