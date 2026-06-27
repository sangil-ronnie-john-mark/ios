import 'package:flutter/cupertino.dart';
import 'package:liquid_glass_easy/liquid_glass_easy.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LiquidGlassWidgets.initialize();
  runApp( LiquidGlassWidgets.wrap(
      adaptiveQuality: true,
      child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  List<Widget> pages = [
    Home(),
    Center(child: Text('message'),),
    Center(child: Text('post'),),
    Center(child: Text('activity'),),
    Account()
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CupertinoColors.white,
      
      ),
      home: GlassScaffold(
          bottomBar: GlassTabBar.bottom(tabs: [
            GlassTab(icon: FaIcon(FontAwesomeIcons.homeAlt), activeIcon: FaIcon(FontAwesomeIcons.solidHome, color: CupertinoColors.systemPink,)),
            GlassTab(icon: Icon(CupertinoIcons.chat_bubble), activeIcon: Icon(CupertinoIcons.chat_bubble_fill, color: CupertinoColors.systemPink,)),
            GlassTab(icon: FaIcon(FontAwesomeIcons.add), activeIcon: FaIcon(FontAwesomeIcons.add, color: CupertinoColors.systemPink,)),
            GlassTab(icon: FaIcon(FontAwesomeIcons.heart), activeIcon: FaIcon(FontAwesomeIcons.solidHeart, color: CupertinoColors.systemPink,)),
            GlassTab(icon: FaIcon(FontAwesomeIcons.user), activeIcon: FaIcon(FontAwesomeIcons.solidUser, color: CupertinoColors.systemPink,)),

          ], selectedIndex: selectedIndex, onTabSelected: (i){
            setState(() {
              selectedIndex = i;
            });
          }),
          body: SafeArea(child: pages[selectedIndex])),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget posts() {
   return Row(
      spacing: 5,
      children: [
        ClipOval(child: Image.network("https://scontent.fmnl15-1.fna.fbcdn.net/v/t39.30808-6/723852619_26882175398145340_5603107449164470077_n.jpg?stp=dst-jpg_tt6&cstp=mx1080x1080&ctp=s1080x1080&_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEV88TJzLBpVe40wRhyUio6BpXvXoS657MGle9ehLrns9UjNvc4_AxVfo1WksKa-1jbObeYSBzutwlXzMcsVHsh&_nc_ohc=L3ypTiO17GoQ7kNvwFtPhL1&_nc_oc=AdqkuVOWJiOKhRsJ-Q7PGHYPnRosU_Xn-q_zQE5v-27ZJe6oK3WuuApXX8O_XHh3BHw&_nc_zt=23&_nc_ht=scontent.fmnl15-1.fna&_nc_gid=2N8li1bg7XDNW_MAi02_SQ&_nc_ss=7b2a8&oh=00_Af_q6o_TuCywAGneXQiZqwVjWj2sKnM8asTtQu06S8ShwA&oe=6A455571", height: 50,)),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('xavscott', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Lorem ipsum is a standard placeholder text used in design and publishing to fill empty spaces before final copy is ready. It is a jumbled, altered version of a 1st-century BC philosophical text by Cicero, specifically designed to mimic the normal distribution of letters in English.', maxLines: 2, overflow: TextOverflow.ellipsis,),
              Row(
                spacing: 15,
                children: [
                  Icon(CupertinoIcons.heart),
                  Icon(CupertinoIcons.chat_bubble),
                  Icon(CupertinoIcons.refresh),
                  Icon(CupertinoIcons.bookmark)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          Row(
            spacing: 5,
            children: [
              ClipOval(child: Image.network("https://scontent.fmnl15-1.fna.fbcdn.net/v/t39.30808-6/723852619_26882175398145340_5603107449164470077_n.jpg?stp=dst-jpg_tt6&cstp=mx1080x1080&ctp=s1080x1080&_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEV88TJzLBpVe40wRhyUio6BpXvXoS657MGle9ehLrns9UjNvc4_AxVfo1WksKa-1jbObeYSBzutwlXzMcsVHsh&_nc_ohc=L3ypTiO17GoQ7kNvwFtPhL1&_nc_oc=AdqkuVOWJiOKhRsJ-Q7PGHYPnRosU_Xn-q_zQE5v-27ZJe6oK3WuuApXX8O_XHh3BHw&_nc_zt=23&_nc_ht=scontent.fmnl15-1.fna&_nc_gid=2N8li1bg7XDNW_MAi02_SQ&_nc_ss=7b2a8&oh=00_Af_q6o_TuCywAGneXQiZqwVjWj2sKnM8asTtQu06S8ShwA&oe=6A455571", height: 50,)),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('xavscott', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('Lorem ipsum is a standard placeholder text used in design and publishing to fill empty spaces before final copy is ready. It is a jumbled, altered version of a 1st-century BC philosophical text by Cicero, specifically designed to mimic the normal distribution of letters in English.', maxLines: 2, overflow: TextOverflow.ellipsis,),
                    Row(
                      spacing: 15,
                      children: [
                        Icon(CupertinoIcons.heart),
                        Icon(CupertinoIcons.chat_bubble),
                        Icon(CupertinoIcons.refresh),
                        Icon(CupertinoIcons.bookmark)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          posts(),
          posts(),
          posts(),
          posts(),
          posts(),
          posts(),
          posts(),
          posts(),
          posts(),
        ],
      ),
    );
  }
}


class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool wifi = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CupertinoListSection.insetGrouped(
          backgroundColor: CupertinoColors.transparent,
          children: [
            GlassListTile(
              leading: Icon(CupertinoIcons.lock),
              title: Text('Private Mode'), trailing: GlassSwitch(activeColor: CupertinoColors.systemPink, value: wifi, onChanged: (value){
              setState(() {
                wifi = value;
              });
            }),),
            GlassListTile(
              leading: Icon(CupertinoIcons.person),
              onTap: (){
                showCupertinoDialog(context: context, builder: (context){
                  return GlassDialog(
                      title: 'Username',
                      content: GlassTextField(
                        placeholder: 'Hi',
                        glowColor: Colors.white38,
                      ),
                      actions: [
                    GlassDialogAction(
                        isDestructive: true,
                        label: 'Close', onPressed: (){
                      Navigator.pop(context);
                    }),
                    GlassDialogAction(label: 'Save', onPressed: (){
                      Navigator.pop(context);
                    }),
                  ]);
                });
              },
              title: Text('Username'), trailing: Icon(CupertinoIcons.chevron_forward),)
          ],
        )
      ],
    );
  }
}
