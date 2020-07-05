import 'package:citkmutnb/widget/classroompak1.dart';
import 'package:citkmutnb/widget/detailpak1.dart';
import 'package:flutter/material.dart';

class Pak1 extends StatefulWidget {
  @override
  _Pak1State createState() => _Pak1State();
}

class _Pak1State extends State<Pak1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text('ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์'),
                snap: true,
                floating: true,
                elevation: 6,
                expandedHeight: 210,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'images/Pak7.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.blue,
                    tabs: [
                      Tab(
                        text: 'รายละเอียด',
                      ),
                      Tab(
                        text: 'ห้องเรียน',
                      ),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Detailpak1(),
              Classroompak1(),
            ],
          ),
        ),
      ),
    );
    // return DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //     body: CustomScrollView(
    //       slivers: <Widget>[
    //         SliverAppBar(
    //           title: Text('ภาควิชาเทคโนโลยีวิศวกรรมอิเล็กทรอนิกส์'),
    //           snap: true,
    //           floating: true,
    //           elevation: 6,
    //           expandedHeight: 210,
    //           pinned: true,
    //           flexibleSpace: FlexibleSpaceBar(
    //             background: Image.asset(
    //               'images/Pak7.png',
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //         ),
    //         SliverPersistentHeader(
    //           delegate: _SliverAppBarDelegate(
    //             TabBar(
    //               labelColor: Colors.blue,
    //               tabs: [
    //                 Tab(
    //                   text: 'รายละเอียด',
    //                 ),
    //                 Tab(
    //                   text: 'ห้องเรียน',
    //                 ),
    //               ],
    //             ),
    //           ),
    //           pinned: true,
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
