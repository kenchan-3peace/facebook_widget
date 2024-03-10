import 'package:facebook_widget/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final Logger logger = Logger();

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 6,
      child: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Facebook_Logo_%282019%29.svg/1280px-Facebook_Logo_%282019%29.svg.png', width: 150,) ,
        actions:[
          GestureDetector(
            onTap:(){
              Fluttertoast.showToast(
                msg: 'AppBarの＋アイコンを押しました！',
                fontSize: 18,
              );
            },
            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.add_circle, color: Colors.black,),
            ) 
          ),
          GestureDetector(
            onTap:(){
              Fluttertoast.showToast(
                msg: 'AppBarのサーチアイコンを押しました！',
                fontSize: 18,
              );
            },
            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search, color: Colors.black,),
            ),
          ),
          GestureDetector(
            onTap:(){
              Fluttertoast.showToast(
                msg: 'AppBarのメッセンジャーアイコンを押しました！',
                fontSize: 18,
              );
            },
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.network('https://www.iconpacks.net/icons/2/free-facebook-messenger-icon-2882-thumb.png', width: 23,),
            ),
          ),
        ],
        bottom: const TabBar(
          indicatorColor: Color.fromARGB(255, 0, 72, 255),
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(
              icon: Icon(Icons.home_filled, color: Colors.black),
            ),
            Tab(
              icon: Icon(
                Icons.ondemand_video, color: Colors.black
              ),
            ),
            Tab(
              icon: Icon(
                Icons.people_alt_outlined, color: Colors.black
              ),
            ),
            Tab(
              icon: Icon(
                Icons.storefront, color: Colors.black
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications_none, color: Colors.black
              ),
            ),
            Tab(
              icon: Icon(
                Icons.account_circle, color: Colors.black
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
            children: [
              Home(),
              const Center(child: Text('ダミー画面', style: TextStyle(fontSize: 50))),
              const Center(child: Text('ダミー画面', style: TextStyle(fontSize: 50))),
              const Center(child: Text('ダミー画面', style: TextStyle(fontSize: 50))),
              const Center(child: Text('ダミー画面', style: TextStyle(fontSize: 50))),
              const Center(child: Text('ダミー画面', style: TextStyle(fontSize: 50))),
            ],
          ),
    ),
    );
  }
}