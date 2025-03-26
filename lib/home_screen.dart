import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_admob/banner/banner_example.dart';

class HomeScreen extends StatefulWidget {
  static const name = 'home-screen';
  static const path = '/';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Debatech'),
            Icon(Icons.sports_bar, color: Colors.yellow),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {
                  context.go('${HomeScreen.path}/${BannerExample.path}');
                },
                child: Text('Banner'),
              ),
              FilledButton(onPressed: () {}, child: Text('Interstitial')),
              FilledButton(onPressed: () {}, child: Text('Video rewarded')),
            ],
          ),
        ),
      ),
    );
  }
}
