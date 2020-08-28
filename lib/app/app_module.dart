import 'package:IHC_netflix/models/episode.dart';
import 'package:IHC_netflix/models/series.dart';
import 'package:IHC_netflix/pages/tv_show.dart';
import 'package:IHC_netflix/store/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';

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

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Counter()),
      ];

  @override
  List<Router> get routers => [
        Router(
          "/",
          child: (_, args) => TvShow(
            item: series,
            match: 1,
          ),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
