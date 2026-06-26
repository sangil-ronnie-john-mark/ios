import 'package:flutter/cupertino.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LiquidGlassWidgets.initialize();

  runApp(LiquidGlassWidgets.wrap(child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: GlassScaffold(
          bottomBar: GlassTabBar.bottom(
            selectedIndex: 0,
            onTabSelected: (_) {},
            tabs: const [
              GlassTab(icon: Icon(CupertinoIcons.home), label: 'Home'),
              GlassTab(icon: Icon(CupertinoIcons.search), label: 'Search'),
              GlassTab(icon: Icon(CupertinoIcons.search), label: 'Search'),
              GlassTab(icon: Icon(CupertinoIcons.search), label: 'Search'),
            ],
          ),
          background: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR322P1uUB9nKRzGzxYHjqq2sKqFLX-qvdATlKwHkSiek9pEylJFMb0aEE4&s=10', fit: BoxFit.cover),
          statusBarStyle: GlassStatusBarStyle.dark,
          appBar: GlassAppBar(title: const Text('My App')),
          body: Center(child: GlassCard(
            quality: GlassQuality.premium,
            child: const Text('Staticsd hero section'),
          )),
        ),
    );
  }
}
