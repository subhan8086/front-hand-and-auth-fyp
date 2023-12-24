import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fyp_pro/screen/Add.dart';
import 'package:fyp_pro/screen/category.dart';
import 'package:fyp_pro/screen/fvrt.dart';
import 'package:fyp_pro/screen/login.dart';
import 'package:fyp_pro/screen/profile.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}
enum FilterList { bbcNews, aryNews, independent, reuters, cnn, alJazeera }
class _homeState extends State<home> {
  FilterList? SelectedMenu;
  String name = 'bbc-news';
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Tooltip(
            message: 'Log Out',
            child: Icon(Icons.logout),

          ),
          color: Colors.white,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
          },
        ),
        title: Center(
          child: Text(
            'Home ',
            style: TextStyle(color: Colors.white),
          ),
        ),

        actions: [
          PopupMenuButton<FilterList>(
              initialValue: SelectedMenu,
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              // onSelected: (FilterList item) {
              //   if (FilterList.bbcNews.name == item.name) {
              //     name = 'bbc-news';
              //   }
              //
              //   if (FilterList.aryNews.name == item.name) {
              //     name = 'ary-news';
              //   }
              //   if (FilterList.cnn.name == item.name) {
              //     name = 'CNN';
              //   }
              //   setState(() {
              //     SelectedMenu = item;
              //   });
              // },
              itemBuilder: (BuildContext context) =>
              <PopupMenuEntry<FilterList>>[
                PopupMenuItem<FilterList>(
                    value: FilterList.bbcNews, child: Text('BBC News')),
                PopupMenuItem<FilterList>(
                    value: FilterList.aryNews, child: Text('Ary News')),
                PopupMenuItem<FilterList>(
                    value: FilterList.cnn, child: Text('Cnn News')),
                PopupMenuItem<FilterList>(
                    value: FilterList.cnn, child: Text('AlJazeera News')),

                PopupMenuItem<FilterList>(
                    value: FilterList.cnn, child: Text('Independent News')),
                PopupMenuItem<FilterList>(
                    value: FilterList.cnn, child: Text('Reuters News')),
              ]),
        ],
      ),
      body: Center(
        child: Text('Welcome to Home Page'),
      ),
      bottomNavigationBar:
           BottomNavigationBar(
             backgroundColor: Colors.purple,
             selectedItemColor: Colors.purple,
             unselectedItemColor: Colors.grey,
             selectedLabelStyle: TextStyle(color: Colors.white),
             unselectedLabelStyle: TextStyle(color: Colors.purple),
            items: [
              BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Home',
                    child: InkWell(
                        onTap:  (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                        },
                        child: Icon(Icons.home))),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Favorite',
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>fvrt()));
                        },
                        child: Icon(Icons.favorite))),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Add',
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>add()));
                        },
                        child: Icon(Icons.add))),
                label: 'Add',

              ),
              BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Category' ,
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>category()));
                        },
                        child: Icon(Icons.category))),
                label: 'Categories',

              ),
              BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Profile',
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                        },
                        child: Icon(Icons.person))),
                label: 'Profile',

              ),
            ],


          ),
        );


  }
}
