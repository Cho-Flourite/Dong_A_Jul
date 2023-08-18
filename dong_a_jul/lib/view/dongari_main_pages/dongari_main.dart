import 'package:dong_a_jul/view/bottom_sheets/bottom_sheet.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/dongari_apply_button.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_announcement/dongari_announcement.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_board/dongari_board.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_component/dongari_header.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_component/dongari_sphd.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_recruitment/dongari_recruitment.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_component/dongari_tabs.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_manage/dongari_manager.dart';
import 'package:dong_a_jul/view/notification_pages/notification.dart';
import 'package:dong_a_jul/view/main_pages/searching/main_searching.dart';
import 'package:dong_a_jul/view/main_pages/today/main_today.dart';
import 'package:dong_a_jul/view/profile_pages/profile.dart';
import 'package:flutter/material.dart';

class DongariMain extends StatefulWidget {
  const DongariMain({super.key});

  @override
  State<DongariMain> createState() => _DongariMainState();
}

class _DongariMainState extends State<DongariMain> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        child: DefaultTabController(
          length: 4,
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
                '아롬',
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
                        flexibleSpace: FlexibleSpaceBar(
                          background: DongariHeader(),
                        ),
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
                            Text(
                              '관리자',
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
                    DongariTabs(DongariRecruitmentPage()),
                    DongariTabs(DongariAnnouncement()),
                    DongariTabs(DongariBoardPage()),
                    DongariTabs(DongariManager()),
                  ],
                )),
          ),
        ),
      ),
      DongariApplyButton(),
    ]);
  }
}
