import 'package:flutter/material.dart';
import 'package:poke_api/others/exit_button.dart';
import 'package:poke_api/others/menu.dart';
import 'package:poke_api/others/pokemons/poke.dart';
import 'package:poke_api/others/pokemons/poke_fire.dart';
import 'package:poke_api/others/pokemons/poke_water.dart';
import 'package:poke_api/others/theme_button.dart';

class AllPage extends StatefulWidget {
  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        //=====IMAGEM DA BARRA=====
        title: Center(child: Image.asset("lib/assets/image/pl.png", scale: 14)),
      ),
      body: ListView(children: <Widget>[
        //=======BOTÕES MENU=======
        MenuButtons(),
        //=====LINHAS========
        //Utilizadas pra fazer a marcação
        //embaixo dos botões

        //=====BOTÕES DE FILTRAGEM=====
        Row(
          children: <Widget>[
            Spacer(),
            Container(
              width: 90,
              height: 2,
              color: Colors.white,
            ),
            Spacer(),
            Spacer(),
            Container(width: 90, height: 2, color: Colors.white),
            Spacer(),
            Spacer(),
            Container(width: 90, height: 2, color: Colors.black),
            Spacer(),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  //=====BOTÃO TODOS OS TIPOS=====
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width,
                      //=====BOTÃO=====
                      child: FlatButton(
                        onPressed: () {
                          escolherOp(0);
                        },
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        //====DECORAÇÃO=====
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width / 2.4,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    _current == 0 ? Colors.amber : Colors.grey,
                                width: 2),
                            color: _current == 0 ? Colors.amber : Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            //======TEXTO======
                            child: Text(
                              'Todos',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: _current == 0
                                    ? Colors.grey.shade700
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //=====BOTÃO TIPO FOGO====
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width,
                      //=====BOTÃO====
                      child: FlatButton(
                        onPressed: () {
                          escolherOp(1);
                        },
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        //====DECORAÇÃO=====
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width / 2.4,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    _current == 1 ? Colors.amber : Colors.grey,
                                width: 2),
                            color: _current == 1 ? Colors.amber : Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Container(
                              //======TEXTO======
                              child: Text(
                                'Fire',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: _current == 1
                                      ? Colors.grey.shade700
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  //=====BOTÃO TIPO ELETRICO=======
                  Expanded(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width,
                      //====BOTÃO====
                      child: FlatButton(
                        onPressed: () {
                          escolherOp(2);
                        },
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        //====DECORAÇÃO=====
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width / 2.4,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    _current == 2 ? Colors.amber : Colors.grey,
                                width: 2),
                            color: _current == 2 ? Colors.amber : Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            //======TEXTO======
                            child: Text(
                              'Eletric',
                              style: TextStyle(
                                fontSize: 17,
                                color: _current == 2
                                    ? Colors.grey.shade700
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //=====BOTÃO TIPO ÁGUA=====
                  Expanded(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width,
                      //====BOTÃO=====
                      child: FlatButton(
                        onPressed: () {
                          escolherOp(3);
                        },
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        //====DECORAÇÃO=====
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width / 2.4,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    _current == 3 ? Colors.amber : Colors.grey,
                                width: 2),
                            color: _current == 3 ? Colors.amber : Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            //=====TEXTO=====
                            child: Text(
                              'Water',
                              style: TextStyle(
                                fontSize: 17,
                                color: _current == 3
                                    ? Colors.grey.shade700
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        //========POKÉMONS=======
        if (_current == 0)
          Column(
            children: [
              Row(children: [
                const Spacer(),
                Pokemons(),
                const Spacer(),
                PokemonsFire(),
                const Spacer(),
              ]),
              Row(children: [
                PokemonsWater(),
                const Spacer(),
              ])
            ],
          )
        else if (_current == 1)
          Row(children: [
            PokemonsFire(),
            const Spacer(),
          ])
        else if (_current == 2)
          Row(children: [
            Pokemons(),
            const Spacer(),
          ])
        else if (_current == 3)
          Row(children: [
            PokemonsWater(),
            const Spacer(),
          ])
      ]),
      //========BOTÂO TEMA/SAIR=======
      bottomNavigationBar: Container(
        height: 80,
        alignment: Alignment.topCenter,
        child: Row(
          children: [
            //====BOTÃO TEMA=====
            Expanded(
              child: ThemeButton(),
            ),
            //====BOTÃO SAIR=====
            Expanded(
              child: ExitButton(),
            ),
          ],
        ),
      ),
    );
  }

  //Utilizado pra fazer a mudança
  //dos botões quando precionados.
  int _current = 0;
  void escolherOp(op) {
    setState(() {
      _current = op;
    });
  }
}
