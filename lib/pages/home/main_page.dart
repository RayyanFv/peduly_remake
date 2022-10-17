import 'package:flutter/material.dart';

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget pedulyButton() {
      return FloatingActionButton(onPressed: () {},
        backgroundColor: Colors.red,
        child: Image.asset('assets/peduly.png',
          width: 20,)
        ,);
    }
    
    Widget customBottomNavBar(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          color: Colors.red,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
            BottomNavigationBarItem(icon: Image.asset('assets/Home.png', width: 21,), label: ''),
            BottomNavigationBarItem(icon: Image.asset('assets/Search.png', width: 20,),label: ''),
            BottomNavigationBarItem(icon: Image.asset('assets/document.png', width: 20,),label: ''),
            BottomNavigationBarItem(icon: Image.asset('assets/Profile.png', width: 20,),label: ''),
          ]),
        ),
      );
    }

    return Scaffold(
      floatingActionButton: pedulyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,
      bottomNavigationBar: customBottomNavBar(),
      body: Center(
        child: Text('Main Page'),
      ),
    );
  }
}
