import 'package:IHC_netflix/models/episode.dart';
import 'package:IHC_netflix/widgets/content_tiles.dart';
import 'package:flutter/material.dart';

class ContentList extends StatelessWidget {
  final List<Episode> _episodios;

  ContentList(this._episodios);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _episodios.length,
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemBuilder: (context, index) {
        final content = _episodios[index];
        return ContentTile(episodio: content);
      },
    );
  }
}
