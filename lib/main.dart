import 'package:IHC_netflix/models/episode.dart';
import 'package:IHC_netflix/models/series.dart';
import 'package:IHC_netflix/pages/tv_show.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final episodio1 = Episode(
    1,
    1,
    "https://image.tmdb.org/t/p/w185/xRTUb8oeQHGjyBWj7OOpkvUuvKO.jpg",
    "Em novembro de 1983, no laboratório do Departamento de Energia dos Estados Unidos na cidade de Hawkins, Indiana, um cientista é atacado por uma criatura escondida. Enquanto anda de bicicleta após jogar uma maratona de Dungeons & Dragons com seus amigos, o garoto de 12 anos Will Byers encontra a criatura e desaparece. No dia seguinte, uma menina com cabelo raspado, vestindo um ropão hospitalar rouba a comida de um restaurante local. O proprietário, Benny, tem pena dela e a alimenta antes de chamar o serviço social.",
    "O Desaparecimento de Will Byers",
    50);
final episodio2 = Episode(
    2,
    1,
    "https://image.tmdb.org/t/p/w185/lXS60geme1LlEob5Wgvj3KilClA.jpg",
    "Os meninos levam Onze para a casa do Mike e ela dorme no porão. No dia seguinte, Mike apelida ela de On. Ela diz que pessoas más estão procurando por ela e se recusa a falar com os pais de Mike. Os cientistas do laboratório de encontram uma substância escorrendo nas paredes da casa de Joyce. Na casa de Mike, Onze reconhece Will por uma foto e aponta para ele. Dustin e Lucas querem dizer aos pais de Mike sobre a Onze, mas ela usa poderes mentais para impedi-los.",
    "A Estranha na Rua Maple",
    47);
final episodio3 = Episode(
    2,
    1,
    "https://image.tmdb.org/t/p/w185/x2LSRK2Cm7MZhjluni1msVJ3wDF.jpg",
    "Barb acorda em uma piscina vazia e suja. Ela grita para Nancy e tenta sair, mas é arrastada por algo invisível. Joyce coloca luzes de natal ao redor de sua casa para falar com Will, que pode fazer as luzes piscarem. O diretor do laboratório de Hawkins Dr. Martin Brenner, permite que o Xerife Hopper veja as imagens de câmera de segurança do laboratório. Hooper percebe que é falso. Ele e seus ajudantes vão do laboratório até uma mulher chamada Terry Ives que alega que a filha dela foi tomada por Martin Brenner. Onze tem um flashback com Brenner, com quem ela chama de papai, ele a coloca numa cela solitária por não querer usar seus poderes para prejudicar um gato. Nancy se preocupa com a Barb, que está desaparecida.",
    "Caramba",
    45);
final episodio4 = Episode(
    2,
    1,
    "https://image.tmdb.org/t/p/w185/x2LSRK2Cm7MZhjluni1msVJ3wDF.jpg",
    "Onze consegue provar aos meninos que Will está vivo usando o walkie-talkie de Mike. Joyce vai ao necrotério para ver o corpo de Will mas se recusa a acreditar que é ele. Os meninos levam a Onze disfarçada para o colégio. Joyce ouve Will em sua parede da sala. Ela rasga o papel de parede para encontrar Will mas vê uma membrana tentando atravessar. No colégio, Onze usa o rádio amador do Sr. Clarke para o canal onde Will está conversando com sua mãe. Joyce destrói a parede com um machado, mas revela apenas a varanda da frente. Nancy descobre uma figura atrás Barb na foto de Jonathan. Jonathan percebe que a figura coincide com a descrição que sua mãe deu da criatura: uma figura humanoide com braços longos e sem rosto.",
    " O Corpo",
    42);

final episodios = [episodio1, episodio2, episodio3, episodio4];

int id;
String name;
String image;
List<String> genres;
List<String> cast;
List<Episode> episodes;
List<int> seasons = [];
DateTime date;
String description;

final series = Serie(
    99,
    "Stranger Things",
    "https://image.tmdb.org/t/p/w185/x2LSRK2Cm7MZhjluni1msVJ3wDF.jpg",
    ["Drama", "Mistério", " Ficção científica", "Sobrenatural"],
    ["Millie Bobby Brown", "Gaten Matarazzo", "Caleb McLaughlin"],
    episodios,
    [1],
    DateTime.now(),
    "Em Stranger Things, quando Will (Noah Schnapp), um menino de 12 anos, desaparece misteriosamente, o xerife Jim Hopper (David Harbour) inicia uma operação para encontrá-lo. Enquanto isso, Mike (Finn Wolfhard), Dustin (Gaten Matarazzo) e Lucas (Caleb McLaughlin), melhores amigos de Will, decidem procurá-lo por conta própria. Mas as investigações acabam levando o grupo a experimentos secretos do governo e a uma peculiar menina perdida na floresta.");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      home: TvShow(
        item: series,
        match: 1,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
