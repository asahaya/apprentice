import 'package:apprentice/card1.dart';
import 'package:apprentice/card2.dart';
import 'package:apprentice/card3.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: Add state variables and functions
  //7
  int _selectedIndex=0;
  //8
  static List<Widget> pages=<Widget>[
    // TODO: Replace with Card1
   const Card1(),
    // TODO: Replace with Card2
    const Card2(),
    // TODO: Replace with Card3
    const Card3(),
  ];

  //9
  void _onItemTappend(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FooderLich',
          //2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: pages[_selectedIndex],
      // TODO: Add bottom navigation bar
      //4
      bottomNavigationBar: BottomNavigationBar(
        //5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TODO: Set selected tab bar
        //10
        currentIndex: _selectedIndex,
        //11
        onTap: _onItemTappend,
        // 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
