import 'package:flutter/material.dart';
import 'package:poke_api/others/exit_button.dart';
import 'package:poke_api/others/menu.dart';
import 'package:poke_api/others/theme_button.dart';

class FavoritePage extends StatefulWidget {
  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        //======IMAGEM DA BARRA======
        title: Center(child: Image.asset("lib/assets/image/pl.png", scale: 14)),
      ),
      body: ListView(
        children: <Widget>[
          //=======BOTÕES MENU=======
          MenuButtons(),
          //=====LINHAS========
          //Utilizadas pra fazer a marcação
          //embaixo dos botões
          Row(
            children: <Widget>[
              Spacer(),
              Container(
                width: 90,
                height: 2,
                color: Colors.black,
              ),
              Spacer(),
              Spacer(),
              Container(width: 90, height: 2, color: Colors.white),
              Spacer(),
              Spacer(),
              Container(
                width: 90,
                height: 2,
                color: Colors.white,
              ),
              Spacer(),
            ],
          ),
          //==========IMAGEM==========
          Center(child: Image.asset("lib/assets/image/vazio.png", scale: 1)),
          //========TEXTOS============
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: const Center(
              child: Text(
                "Está meio vazio por aqui!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            //=====TEXTO 1======
            child: Text(
              "Procure por pokémons para adicioná-",
              style: TextStyle(
                fontSize: 19,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Center(
            //=====TEXTO 2======
            child: Text(
              "lós aos seus favoritos.",
              style: TextStyle(
                fontSize: 19,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          //===========BOTÃO PROCURAR POKÉMONS===========
          Container(
            margin: const EdgeInsets.only(top: 27),
            //=======BOTÃO=====
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/searchPage');
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              //=======DECORAÇÃO========
              child: Container(
                height: 56,
                width: MediaQuery.of(context).size.width / 1.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1.7),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  //======TEXTO=========
                  child: Text(
                    'Procurar pokémons',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      //========BOTÂO TEMA/SAIR=======
      bottomNavigationBar: Container(
        height: 80,
        alignment: Alignment.topCenter,
        child: Row(
          children: [
            //====BOTÃO TEMA====
            Expanded(
              child: ThemeButton(),
            ),
            //====BOTÃO SAIR====
            Expanded(
              child: ExitButton(),
            ),
          ],
        ),
      ),
    );
  }
}
