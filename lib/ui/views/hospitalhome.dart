import 'package:flutter/material.dart';
import 'package:hospital/ui/views/fifthpage.dart';
import 'package:hospital/ui/views/firstpage.dart';
import 'package:hospital/ui/views/fourthpage.dart';
import 'package:hospital/ui/views/secondpage.dart';
import 'package:hospital/ui/views/thirdpage.dart';

class HospitalHome extends StatefulWidget {
  @override
  _HospitalHomeState createState() => _HospitalHomeState();
}

class _HospitalHomeState extends State<HospitalHome> {
  void additem(index) {
    setState(() {
      _selectedPage = index;
      _pagecontroller.animateToPage(_selectedPage,
          duration: Duration(milliseconds: 1), curve: Curves.linear);
    });
  }

  int _selectedPage = 0;
  List<Widget> pageList = [];
  var _pagecontroller = PageController();
  @override
  void initState() {
    pageList.add(Secondpage());
    pageList.add(Thirdpage());
    pageList.add(FourthPage());
    pageList.add(FifthPage());
    pageList.add(SixPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
       
        children: pageList,
        onPageChanged: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
        controller: _pagecontroller,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble,),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: "",
          ),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.lightBlueAccent,
        onTap: additem,
      ),
    );
  }
}
