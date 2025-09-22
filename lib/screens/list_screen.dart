import 'package:flutter/material.dart';
import '../models/song.dart';
import '../widgets/song_card.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final List<Song> songs = const [
    Song(id: '1', title: 'Lagu Santai', artist: 'Artis Lokal', price: 15000, imageUrl: 'https://via.placeholder.com/150'),
    Song(id: '2', title: 'Beat Cepat', artist: 'DJ Nusantara', price: 12000, imageUrl: 'https://via.placeholder.com/150'),
    Song(id: '3', title: 'Melodi Malam', artist: 'Band Indie', price: 18000, imageUrl: 'https://via.placeholder.com/150'),
  ];

  String search = '';

  @override
  Widget build(BuildContext context) {
    final filteredSongs = songs.where((s) =>
      s.title.toLowerCase().contains(search.toLowerCase()) ||
      s.artist.toLowerCase().contains(search.toLowerCase())
    ).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Lagu')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari lagu atau artis...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onChanged: (val) => setState(() => search = val),
            ),
          ),
          Expanded(
            child: filteredSongs.isEmpty
              ? const Center(child: Text('Lagu tidak ditemukan'))
              : ListView.builder(
                  itemCount: filteredSongs.length,
                  itemBuilder: (context, index) => SongCard(song: filteredSongs[index]),
                ),
          ),
        ],
      ),
    );
  }
}