import 'package:IHC_netflix/models/episode.dart';

class Serie {
  int id;
  String name;
  String image;
  List<String> genres;
  List<String> cast;
  List<Episode> episodes;
  List<int> seasons = [];
  DateTime date;
  String description;

  Serie(this.id, this.name, this.image, this.genres, this.cast, this.episodes,
      this.seasons, this.date, this.description);
}
