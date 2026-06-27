import 'package:flutter/cupertino.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LiquidGlassWidgets.initialize();
  runApp( LiquidGlassWidgets.wrap(

      child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double width = 70;
   ScrollController _controller = ScrollController();
  @override
  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      double offset = _controller.offset;

      double newWidth = 70 - (offset / 10); // adjust sensitivity

      if (newWidth < 30) newWidth = 30;
      if (newWidth > 70) newWidth = 70;

      setState(() {
        width = newWidth;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  int selectedIndex = 0;
  List<Widget> pages = [
    Home(),
    Center(child: Text('message')),
    Center(child: Text('post')),
    Center(child: Text('activity')),
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
        extendBody: true,
     
          appBar: GlassAppBar(
            title: FaIcon(FontAwesomeIcons.threads, size: 40,),
            leading: GlassButton(icon: Icon(Icons.menu_outlined), onTap: (){}),
            actions: [
              GlassButton(icon: Icon(CupertinoIcons.rectangle_paperclip), onTap: (){})
            ],
          ),

          bottomBar: GlassTabBar.searchable(
            tabWidth: width,
            searchConfig: GlassSearchBarConfig(onSearchToggle:(_){}),
              settings: LiquidGlassSettings(
                blur: 1,
                thickness: 100,
               glassColor: CupertinoColors.systemFill.withOpacity(0.1),
                ambientStrength: 1,
                lightAngle: 10,
                whitenGated: false,
                refractiveIndex: 1.1,
                chromaticAberration: 0.01
              ),
              tabs: [
            GlassTab(icon: FaIcon(FontAwesomeIcons.homeAlt), activeIcon: FaIcon(FontAwesomeIcons.solidHome, color: CupertinoColors.systemBlue,)),
            GlassTab(icon: Icon(CupertinoIcons.chat_bubble), activeIcon: Icon(CupertinoIcons.chat_bubble_fill, color: CupertinoColors.systemBlue,)),
            GlassTab(icon: FaIcon(FontAwesomeIcons.add), activeIcon: FaIcon(FontAwesomeIcons.add, color: CupertinoColors.systemBlue,)),
            GlassTab(icon: FaIcon(FontAwesomeIcons.heart), activeIcon: FaIcon(FontAwesomeIcons.solidHeart, color: CupertinoColors.systemBlue,)),
            GlassTab(icon: FaIcon(FontAwesomeIcons.user), activeIcon: FaIcon(FontAwesomeIcons.solidUser, color: CupertinoColors.systemBlue,)),

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
            spacing: 0,
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
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              ClipOval(child: Image.network("https://scontent.fmnl15-1.fna.fbcdn.net/v/t39.30808-6/723852619_26882175398145340_5603107449164470077_n.jpg?stp=dst-jpg_tt6&cstp=mx1080x1080&ctp=s1080x1080&_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeEV88TJzLBpVe40wRhyUio6BpXvXoS657MGle9ehLrns9UjNvc4_AxVfo1WksKa-1jbObeYSBzutwlXzMcsVHsh&_nc_ohc=L3ypTiO17GoQ7kNvwFtPhL1&_nc_oc=AdqkuVOWJiOKhRsJ-Q7PGHYPnRosU_Xn-q_zQE5v-27ZJe6oK3WuuApXX8O_XHh3BHw&_nc_zt=23&_nc_ht=scontent.fmnl15-1.fna&_nc_gid=2N8li1bg7XDNW_MAi02_SQ&_nc_ss=7b2a8&oh=00_Af_q6o_TuCywAGneXQiZqwVjWj2sKnM8asTtQu06S8ShwA&oe=6A455571", height: 50,)),
              Expanded(
                child: Column(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('xavscott', style: TextStyle(fontWeight: FontWeight.bold),),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network('https://media.istockphoto.com/id/1132264290/photo/walking-path-under-the-beautiful-sakura-tree-or-cherry-tree-tunnel-in-tokyo-japan.jpg?s=612x612&w=0&k=20&c=7AaKcDJmyfbUTDQaX7CllfMKG_Ux5uLB-a8mYK6ZesM=')),
                   
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
          posts(),
          posts(),
          posts(),
          posts(),
          posts(),
          posts(),
          posts(),
          posts(),
          posts(),
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
        SizedBox(height: 50,),
        CupertinoListSection.insetGrouped(
          backgroundColor: CupertinoColors.transparent,
          children: [
            GlassContainer(
              child: GlassListTile(
                leading: Icon(CupertinoIcons.lock),
              
                title: Text('Private Mode'), trailing: GlassSwitch(
                  settings: LiquidGlassSettings(
                    blur: 10000,
                    thickness: 10,
                    glowIntensity: 10,
                    refractiveIndex: 10
                  ),
                  activeColor: CupertinoColors.systemBlue, value: wifi, onChanged: (value){
                setState(() {
                  wifi = value;
                });
              }),),
            ),
            GlassListTile(
              leading: Icon(CupertinoIcons.person),
              onTap: (){
                showCupertinoDialog(context: context, builder: (context){
                  return GlassDialog(
                      settings: LiquidGlassSettings(
                        blur: 1,
                        glassColor: CupertinoColors.systemBackground.withOpacity(0.01)
                      ),
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


              title: Text('Username'), trailing: Icon(CupertinoIcons.chevron_forward),),

          ],
        )
      ],
    );
  }
}
