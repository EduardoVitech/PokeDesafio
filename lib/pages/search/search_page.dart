import 'package:flutter/material.dart';
import 'package:poke_api/others/exit_button.dart';
import 'package:poke_api/others/menu.dart';
import 'package:poke_api/others/theme_button.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        title: Center(child: Image.asset("lib/assets/image/pl.png", scale: 14)),
      ),
      body: ListView(
        children: <Widget>[
          //=======BOTÕES MENU=======
          MenuButtons(),
          //=====LINHAS========
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
              Container(width: 90, height: 2, color: Colors.black),
              Spacer(),
              Spacer(),
              Container(width: 90, height: 2, color: Colors.white),
              Spacer(),
            ],
          ),
          //===========CAIXA DE PESQUISA============
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 60,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 32),
            padding: const EdgeInsets.only(
              top: 4,
              left: 16,
              right: 16,
              bottom: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 5,
                ),
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Procure por pokémons',
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search_sharp)),
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
            Expanded(
              child: ThemeButton(),
            ),
            Expanded(
              child: ExitButton(),
            ),
          ],
        ),
      ),
    );
  }
}
