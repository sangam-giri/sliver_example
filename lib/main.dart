import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,

              /// We can set minimum height for the appbar using this parameter
              toolbarHeight: 100,
              backgroundColor: Colors.black,
              pinned: true,

              /// Using floating we can make our app bar visible regardless of where we scroll
              // floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://fujiframe.com/assets/images/_3000x2000_fit_center-center_85_none/10085/xhs2-fuji-70-300-Amazilia-Hummingbird.webp',
                  fit: BoxFit.cover,
                ),
                title: Text(
                  'Some Title',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SliverFillRemaining(),
          ],
        ),
      ),
    );
  }
}
