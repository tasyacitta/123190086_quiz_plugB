import 'package:kuis/main.dart';
import 'package:flutter/material.dart';
import 'top_album.dart';

class SongScreen extends StatefulWidget {
 final String albumName;
 final String singer;
 final String releaseDate;
 final String firstEntryDate;
 final String firstEntryPosition;
 final String source;
 final String imageUrls;
 final String albumurl;
 final List<String> songs;
  const SongScreen({Key? key,
    required this.albumName,
    required this.singer,
    required this.releaseDate,
    required this.firstEntryDate,
    required this.firstEntryPosition,
    required this.source,
    required this.imageUrls,
    required this.albumurl,
    required this.songs
  }) : super(key: key);

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Song List"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "Nama Album: ${widget.albumName},${widget.singer},${widget.releaseDate},${widget.firstEntryPosition},${widget.source},${widget.imageUrls},${widget.albumurl},${widget.songs}",
              ) ,
            ],
          ),
        ),
      ),
    );
  }
}

