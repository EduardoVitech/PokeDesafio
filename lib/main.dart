import 'package:flutter/material.dart';
import 'package:poke_api/others/exit_button.dart';
import 'package:poke_api/others/menu.dart';
import 'package:poke_api/others/pokemons/poke.dart';
import 'package:poke_api/others/pokemons/poke_fire.dart';
import 'package:poke_api/others/pokemons/poke_water.dart';
import 'package:poke_api/others/theme_button.dart';
import 'package:poke_api/pages/all/all_page.dart';
import 'package:poke_api/pages/details_poke/details_poke.dart';
import 'package:poke_api/pages/details_poke/details_poke_fire.dart';
import 'package:poke_api/pages/details_poke/details_poke_water.dart';
import 'package:poke_api/pages/favorite/favorite_page.dart';
import 'package:poke_api/pages/search/search_page.dart';
import 'pages/login/login_page.dart';

void main() => runApp(const MyApp());
var theme = lightTheme;

var darkTheme = ThemeData(
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

var lightTheme = ThemeData(
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: theme,
        debugShowCheckedModeBanner: false,
        title: 'Poke API',
        initialRoute: '/loginPage',
        //=====ROTAS=========
        routes: {
          //===PAGES===
          '/loginPage': (context) => LoginPage(),
          '/homePage': (context) => FavoritePage(),
          '/searchPage': (context) => SearchPage(),
          '/allPage': (context) => AllPage(),
          '/detailsPage': (context) => DetailsPage(),
          '/detailsFirePage': (context) => DetailsFirePage(),
          '/detailsWaterPage': (context) => DetailsWaterPage(),
          //===OTHERS===
          '/themeButton': (context) => ThemeButton(),
          '/exitButton': (context) => ExitButton(),
          '/menuButtons': (context) => MenuButtons(),
          '/pokemons': (context) => Pokemons(),
          '/pokefire': (context) => PokemonsFire(),
          '/pokeWater': (context) => PokemonsWater(),
        });
  }
}
