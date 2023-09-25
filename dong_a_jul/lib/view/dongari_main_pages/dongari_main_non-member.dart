import 'package:dong_a_jul/view/dongari_main_pages/dongari_component/dongari_header.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_component/dongari_tabs.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_announcement/dongari_announcement.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_board/dongari_board.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_recruitment/dongari_recruitment.dart';
import 'package:dong_a_jul/view/notification_pages/notification.dart';
import 'package:dong_a_jul/view/profile_pages/profile.dart';
import 'package:flutter/material.dart';

class DongariMainNonMember extends StatefulWidget {
  const DongariMainNonMember({super.key});

  @override
  State<DongariMainNonMember> createState() => _DongariMainNonMemberState();
}

class _DongariMainNonMemberState extends State<DongariMainNonMember> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.black,
              ),
              title: Text(
                '인터페이스',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationPage()),
                    );
                  },
                  icon: const Icon(Icons.notifications_none_sharp),
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyProfile()),
                    );
                  },
                  icon: const Icon(Icons.person),
                  color: Colors.black,
                ),
              ],
            ),
            body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                      sliver: SliverAppBar(
                        expandedHeight: 120.0,
                        collapsedHeight: 6,
                        toolbarHeight: 0,

                        pinned: true,
                        backgroundColor: Colors.white,
                        forceElevated: innerBoxIsScrolled,
                        bottom: TabBar(
                          indicatorWeight: 4.0,
                          indicatorColor: Colors.orange[800],
                          labelPadding: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.all(3),
                          tabs: [
                            Text(
                              '모집글',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '공지사항',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '게시판',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ];
                },
                body: TabBarView(
                  children: [

                    DongariTabs(DongariAnnouncement()),
                    DongariTabs(DongariBoardPage()),
                  ],
                )),
          ),
        ),
      ),
      Positioned(
        bottom: 24,
        right: 24,
        child: FloatingActionButton(
          onPressed: () {
            print("버튼클릭");
          },
          tooltip: '공유하기',
          child: Icon(Icons.account_tree_rounded),
          backgroundColor: Color.fromRGBO(255, 121, 34, 1),
          foregroundColor: Colors.white,
          shape: CircleBorder(),
        ),
      )
    ]);
  }
}
