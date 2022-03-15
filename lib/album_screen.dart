import 'package:kuis/main.dart';
import 'package:kuis/song_screen.dart';

import 'top_album.dart';
import 'package:flutter/material.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Top Album"),
    ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 50,
          mainAxisSpacing: 10,),
          itemBuilder: (context, index) {
          final TopAlbum album = topAlbumList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SongScreen(
                    albumName: album.albumName,
                    singer:album.singer,
                    releaseDate: album.releaseDate,
                    firstEntryDate: album.firstEntryDate,
                    firstEntryPosition: album.firstEntryPosition,
                    source: album.source,
                    imageUrls: album.imageUrls,
                    albumurl: album.albumurl,
                    songs: album.songs,
                    );
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(album.imageUrls)
                ],
              ),
            ),
          );
        },
        itemCount: topAlbumList.length,),
    );
  }
}
