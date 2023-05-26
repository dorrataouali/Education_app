import 'package:animate_do/animate_do.dart';
import 'package:school_app/Screens/Design_button/design.dart';
import 'package:school_app/Screens/Home/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:iconsax/iconsax.dart';
import 'package:school_app/Screens/Home/settings.dart';
import 'package:school_app/Screens/Login/components/login_form.dart';
import 'package:school_app/Screens/chats/pages/home/home_page.dart';
import 'package:school_app/Screens/quiz/screens/splash_screen.dart';


import '../coding_button/movies.dart';
import '../language_button/language.dart';
import '../math_button/maths.dart';
import '../profile_photo/profile_photo.dart';
/*this is the sidebar page where it is working on the home page too it is important fortesting */

class SideBarPage extends StatefulWidget {
  const SideBarPage({ Key? key }) : super(key: key);

  @override
  _SideBarPageState createState() => _SideBarPageState();
}

class _SideBarPageState extends State<SideBarPage> {
  late ScrollController _scrollController;
  bool _isScrolled = false;

  List<dynamic> _services = [
    ['Coding', Iconsax.code, Colors.blue],
    ['Design', Iconsax.designtools, Colors.pink],
    ['Maths', Iconsax.math, Colors.orange],
    ['Language', Iconsax.language_circle, Colors.green],
  ];


  List<dynamic> _transactions = [
    ['Amazon', 'https://cdn.dribbble.com/users/6047818/screenshots/16425364/media/a855b66a9d41c79ef04ba5dd258516ef.png'],
    ['Cash from ATM', 'https://cdn.dribbble.com/users/6228692/screenshots/16452651/media/f0c5644c6686695f873f94294d6e2872.png'],
    ['Netflix', 'https://cdn.dribbble.com/users/1187002/screenshots/16387491/media/15a6b53012791aeabe8debc092dbab5f.jpg'],
    ['Apple Store', 'https://cdn.dribbble.com/users/1962534/screenshots/16431541/media/7324634fc6300cff2ef93023f04b44c2.jpg'],
    ['Cash from ATM', 'https://cdn.dribbble.com/users/1615584/screenshots/16364085/media/f7a6bb29101ab59b53c72aba06f890dc.jpg'],
    ['Netflix', 'https://cdn.dribbble.com/users/427857/screenshots/16434886/media/ae5f9ae8ef9dd88d9b51221d04e9b368.png'],
    ['Netflix', 'https://cdn.dribbble.com/users/2564256/screenshots/16375491/media/895c28ea1efd9423393a85c291c94ae6.png'],
    ['Netflix', 'https://cdn.dribbble.com/users/2564256/screenshots/16421629/media/fa97071b5dd84f924d6cda859e758648.png'],
    ['Netflix', 'https://cdn.dribbble.com/users/1126935/screenshots/16438160/media/02e1bfa43512c40bd19be76fe53391f6.png']




  ];


  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_listenToScrollChange);

    super.initState();
  }

  void _listenToScrollChange() {
    if (_scrollController.offset >= 100.0) {
      setState(() {
        _isScrolled = true;
      });
    } else {
      setState(() {
        _isScrolled = false;
      });
    }
  }

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.grey.shade900,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade900,
            blurRadius: 20.0,
            spreadRadius: 5.0,
            offset: Offset(-20.0, 0.0),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      drawer: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 70.0,
                    height: 70.0,
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 24.0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/images/avatar-1.png')
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text("John Doe",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                ),
                Spacer(),
                Divider(color: Colors.grey.shade800,),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SideBarPage())
                    );
                  },
                  leading: Icon(Iconsax.home),
                  title: Text('Dashboard'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SplashScreen())
                    );
                  },
                  leading: Icon(Icons.message),
                  title: Text('Quiz'),
                ),

                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage())
                    );
                  },
                  leading: Icon(Iconsax.chart_2),
                  title: Text('Profile'),
                ),
                ListTile(

                  onTap: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  HomePage())
          );

          },
                  leading: Icon(Iconsax.profile_2user),
                  title: Text('Contacts'),
                ),
                SizedBox(height: 50,),
                Divider(color: Colors.grey.shade800),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingsPage())
                    );
                  },

                  leading: Icon(Iconsax.setting_2),
                  title: Text('Settings'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginForm())
                    );
                  },
                  leading: Icon(Iconsax.support),
                  title: Text('Log Out'),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Version 1.0.0', style: TextStyle(color: Colors.grey.shade500),),
                )
              ],
            ),
          ),
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          body: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  expandedHeight: 250.0,
                  elevation: 0,
                  pinned: true,
                  stretch: true,
                  toolbarHeight: 80,
                  backgroundColor: Colors.white,
                  leading: IconButton(
                    color: Colors.black,
                    onPressed: _handleMenuButtonPressed,
                    icon: ValueListenableBuilder<AdvancedDrawerValue>(
                      valueListenable: _advancedDrawerController,
                      builder: (_, value, __) {
                        return AnimatedSwitcher(
                          duration: Duration(milliseconds: 250),
                          child: Icon(
                            value.visible ? Iconsax.close_square : Iconsax.menu,
                            key: ValueKey<bool>(value.visible),
                          ),
                        );
                      },
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(Iconsax.notification, color: Colors.grey.shade700),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Iconsax.more, color: Colors.grey.shade700),
                      onPressed: () {},
                    ),
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  centerTitle: true,
                  title: AnimatedOpacity(
                    opacity: _isScrolled ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      children: [
                        Text(
                          'Welcome Again',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: 30,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    titlePadding: const EdgeInsets.only(left: 20, right: 20),
                    title: AnimatedOpacity(
                      duration: const Duration(milliseconds: 500),
                      opacity: _isScrolled ? 0.0 : 1.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FadeIn(
                            duration: const Duration(milliseconds: 500),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('', style: TextStyle(color: Colors.grey.shade800, fontSize: 22),),
                                SizedBox(width: 3,),
                                Text('Welcome Again',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          FadeIn(
                            duration: const Duration(milliseconds: 500),
                            child: MaterialButton(
                              height: 30,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                              onPressed: () {},
                              child: Text('Get Quiz', style: TextStyle(color: Colors.black, fontSize: 10),),
                              color: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey.shade300, width: 1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: 30,
                            height: 3,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(height: 8,),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        height: 115,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _services.length,
                          itemBuilder: (context, index) {
                            return FadeInDown(
                              duration: Duration(milliseconds: (index + 1) * 100),
                              child: AspectRatio(
                                aspectRatio: 1,

                                child: GestureDetector(
                                  onTap: () {
                                    if (_services[index][0] == 'Coding') {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => MoviesPage()));
                                    } else if (_services[index][0] == 'Design') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => DesignPage()),
                                      );
                                    }else if (_services[index][0] == 'Language') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LanguagePage()),
                                      );
                                    }else if (_services[index][0] == 'Maths') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => MathsPage()),
                                      );
                                    }
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade900,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Icon(_services[index][1], color: Colors.white, size: 25,),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(_services[index][0], style: TextStyle(color: Colors.grey.shade800, fontSize: 12),),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ])
                ),
                SliverFillRemaining(
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Column(
                      children: [
                        FadeInDown(
                          duration: Duration(milliseconds: 500),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Today', style: TextStyle(color: Colors.grey.shade800, fontSize: 14, fontWeight: FontWeight.w600),),
                                SizedBox(width: 10,),
                                Text('April,5th,2023', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700,)),
                              ]
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.only(top: 10),
                            physics: AlwaysScrollableScrollPhysics(),
                            itemCount: _transactions.length,
                            itemBuilder: (context, index) {
                              return FadeInDown(
                                duration: Duration(milliseconds: 1000),
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade200,
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                        offset: Offset(0, 6),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 260,
                                            height: 250,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              image: DecorationImage(
                                                image: NetworkImage(_transactions[index][1],),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          /*  Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                _transactions[index][0],
                                                style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),

                                            ],
                                          ),*/
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),


                      ],
                    ),
                  ),
                )
              ]
          )
      ),
    );
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}