import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:poke_api/shared/models/user_model.dart';
import 'package:poke_api/others/theme_button.dart';
import 'package:poke_api/shared/values/preference_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _EmailImputControler = TextEditingController();
  TextEditingController _PasswordImputControler = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //=======LOGO==========
              Container(
                margin: const EdgeInsets.only(top: 70),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "lib/assets/image/PokeLogo.png",
                    scale: 6,
                  ),
                ),
              ),
              //======TEXTO 1=========
              Container(
                margin: const EdgeInsets.only(top: 50, left: 32),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Comece a coletar",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //======TEXTO 2======
              Container(
                margin: const EdgeInsets.only(left: 32, bottom: 50),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "pokémons!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //=======EMAIL=====
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                width: MediaQuery.of(context).size.width / 1.2,
                height: 60,
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
                  validator: (value) {
                    if (value!.length < 5) {
                      return "E-mail muito curto.";
                    } else if (!value.contains("@")) {
                      return "E-mail invalido.";
                    } else if (value.isEmpty) {
                      return "Preencha o campo de email.";
                    }
                    return null;
                  },
                  controller: _EmailImputControler,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              //======SENHA========
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                width: MediaQuery.of(context).size.width / 1.2,
                height: 60,
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
                  validator: (value) {
                    if (value!.length < 6) {
                      return "Senha muito pequena.";
                    }
                    return null;
                  },
                  controller: _PasswordImputControler,
                  obscureText: true,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'Senha',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              //======BOTÂO ENTRAR======
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/allPage');
                    print("Valido");
                  } else {
                    print("invalido");
                  }

                  _doSigUp();
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amber),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //========BOTÂO TEMA/IMAGEM=======
      bottomNavigationBar: Container(
        height: 182,
        padding: const EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Image.asset(
              "lib/assets/image/tela1.png",
              height: double.infinity,
              width: double.infinity,
            ),
            ThemeButton(),
          ],
        ),
      ),
    );
  }

  //=========_doSingUp=======
  //recebe os dados atuais e passa para o
  // _saveUser para salvar esses dados no aparelho
  void _doSigUp() {
    UserModel newUser = UserModel(
      email: _EmailImputControler.text,
      password: _PasswordImputControler.text,
      keepOn: true,
    );

    print(newUser);
    _saveUser(newUser);
  }

  //=======_saveUser======
  //salva os dados na memoria do aparelho.
  void _saveUser(UserModel user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(PreferenceKeys.activeUser, json.encode(user.toJson()));
  }
}
