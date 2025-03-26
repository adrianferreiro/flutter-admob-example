import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_admob/banner/banner_example.dart';
import 'package:test_admob/core/widgets/background_widget.dart';
import 'package:test_admob/interstitial/interstitial_example.dart';
import 'package:test_admob/rewarded/rewarded_example.dart';

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
    final colors = Theme.of(context).colorScheme;
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
          child: BackgroundImage(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 30,
              children: [
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: colors.secondary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Monetización',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: colors.inversePrimary,
                      ),
                    ),
                  ),
                ),
                FilledButton.icon(
                  icon: Icon(Icons.ad_units),
                  onPressed: () {
                    context.go('${HomeScreen.path}/${BannerExample.path}');
                  },
                  label: Text('Banner'),
                ),
                FilledButton.icon(
                  icon: Icon(Icons.movie),
                  onPressed: () {
                    context.go(
                      '${HomeScreen.path}/${InterstitialExample.path}',
                    );
                  },
                  label: Text('Interstitial'),
                ),
                FilledButton.icon(
                  icon: Icon(Icons.monetization_on),
                  onPressed: () {
                    context.go('${HomeScreen.path}/${RewardedExample.path}');
                  },
                  label: Text('Video rewarded'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
