import 'package:flutter/material.dart';
import 'package:key2iq_assignment/presentation/base/community/community.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key key}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final PageController _pagecontroller = PageController();

  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pagecontroller,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(),
          CommunityPage(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: onTap,
        elevation: 0,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'COURSES',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.cabin),
            label: 'COMMUNITY',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PROFILE',
          ),
        ],
      ),
    );
  }

  void onTap(int pageIndex) {
    _pagecontroller.animateToPage(
      pageIndex,
      duration: const Duration(microseconds: 200),
      curve: Curves.linear,
    );
  }

  void onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }
}
