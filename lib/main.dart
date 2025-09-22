import 'package:flutter/material.dart';
import 'constants/theme.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/list_screen.dart';
import 'screens/detail_screen.dart';
import 'models/song.dart';
import 'screens/profile_screen.dart';

//test

void main() => runApp(const MusikuApp());

class MusikuApp extends StatelessWidget {
  const MusikuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UKM Musik',
      theme: appTheme,
      debugShowCheckedModeBanner: false, // Tambahkan baris ini
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/list': (context) => const ListScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/detail': (context) => DetailScreen(song: dummySong),
      },
    );
  }
}

const dummySong = Song(
  id: '0',
  title: 'Contoh Lagu',
  artist: 'Artis Hebat',
  price: 15000,
  imageUrl: 'https://via.placeholder.com/150',
);