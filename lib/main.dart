import 'package:flutter/cupertino.dart';
import 'package:liquid_glass_easy/liquid_glass_easy.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedindex = 0;


  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.white
      ),
      home: CupertinoPageScaffold(child: Stack(
        children: [

          Positioned.fill(child: AddPage()),
          Positioned.fill(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Mzhmp0C0EAE33IsDvhJZPWcytCNCp4gHAFy2vzNz0w&s=10", fit: BoxFit.cover,)),

          Positioned(
              bottom: 40,
              left: 30,
              right: 30,
              child: SizedBox(
                height: 200,
                child: LiquidGlassBottomNavBar.withImpeller(items: [
                            LiquidGlassTabBarItem(icon: CupertinoIcons.home),
                            LiquidGlassTabBarItem(icon: CupertinoIcons.chat_bubble),
                            LiquidGlassTabBarItem(icon: CupertinoIcons.add),
                            LiquidGlassTabBarItem(icon: CupertinoIcons.settings),
                            LiquidGlassTabBarItem(icon: CupertinoIcons.person),
                          ], selectedIndex: selectedindex, onChanged: (i){
                            setState(() {
                selectedindex = i;
                            });
                          }),
              )),

        ],
      )),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Column(
      children: [
        Text('hello world')
      ],
    ));
  }
}

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: SingleChildScrollView(
      child: Column(
        children: [

          Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),  Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),
          Text('hello world', style: TextStyle(color: CupertinoColors.white),),




        ],
      ),
    ));
  }
}


