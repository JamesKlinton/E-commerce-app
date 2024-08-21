import 'package:flutter/material.dart';
import 'package:traitz_commerce/pages/account_page.dart';
import 'package:traitz_commerce/pages/history_page.dart';
import 'package:traitz_commerce/pages/home.dart';
import 'package:traitz_commerce/pages/wishlist_page.dart';

class NavigationPanel extends StatefulWidget {
  const NavigationPanel({super.key});

  @override
  State<NavigationPanel> createState() => _NavigationPanelState();
}

class _NavigationPanelState extends State<NavigationPanel> {
  int _currentIndex = 0;
  void NavigateBottomBar(int index){
    setState((){
      _currentIndex = index;
    });
  }
  List<Widget> _pages = [
    Home(),
    WishlistPage(),
    HistoryPage(),
    AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: NavigateBottomBar,
        currentIndex: _currentIndex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,),
        label: "Home",
        ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,),
        label: "Wishlist"
        ),
          BottomNavigationBarItem(icon: Icon(Icons.note_alt,),
        label: "History"
        ),
          BottomNavigationBarItem(icon: Icon(Icons.person,),
        label: "Account"
        ),
      ],
   showSelectedLabels: true,
   selectedItemColor: Colors.greenAccent,
   unselectedItemColor: Colors.black26,
   showUnselectedLabels: true,
   selectedFontSize: 13,
   unselectedFontSize: 10,
      ),
    );
  }
}