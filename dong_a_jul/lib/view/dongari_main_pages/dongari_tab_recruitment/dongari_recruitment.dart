import 'package:flutter/material.dart';

import '../../../model/club.dart';
import '../dongari_component/dongari_sphd.dart';

class DongariRecruitmentPage extends StatefulWidget {
  DongariRecruitmentPage({required this.club, super.key});

  final Club club;

  @override
  State<DongariRecruitmentPage> createState() => _DongariRecruitmentPageState();
}

class _DongariRecruitmentPageState extends State<DongariRecruitmentPage> {
  final GlobalKey _containerkey = GlobalKey();
  Size? size;
  Offset? offset;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        size = _getSize();
        offset = _getOffset();
      });
    });
  }
  Size? _getSize() {
    if (_containerkey.currentContext != null) {
      final RenderBox renderBox =
      _containerkey.currentContext!.findRenderObject() as RenderBox;
      Size size = renderBox.size;
      return size;
    }
  }

  Offset? _getOffset() {
    if (_containerkey.currentContext != null) {
      final RenderBox renderBox =
      _containerkey.currentContext!.findRenderObject() as RenderBox;
      Offset offset = renderBox.localToGlobal(Offset.zero);
      return offset;
    }
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: _containerkey,
      top: false,
      bottom: false,
      child: Builder(builder: (BuildContext context) {
        return CustomScrollView(
          slivers: <Widget>[
            SliverOverlapInjector(
              handle:
              NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context),
            ),
            SliverPersistentHeader(
                delegate: SliverHeaderDelegateCS(
                  maxHeight: size!.height +200,
                  maxChild: Column(
                    children: [
                      SizedBox(height: 5,),
                      /* ListTile(
          tileColor: Colors.white,
          title: Row(
            children: [
              Text(
                '모집기간',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(width: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  color: Colors.orange[800],
                  child: Text(
                    'D-7',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40),

            ],
          ),
          trailing: Text('7월 2일 ~ 7월 20일'),
        ),*/
                      SizedBox(height: 5,),
                      Container(
                        child: Image.network(
                          widget.club.image.toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                      ListTile(
                        tileColor: Colors.white,
                        title:Text(
                          widget.club.oneline.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        tileColor: Colors.white,
                        title:Text(
                          widget.club.oneline.toString(),
                          style: TextStyle( fontSize: 15),
                        ),
                      ),

                      SizedBox(height: 5,),
                      Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            ListTile(
                              title:Text(
                                '동아리방 위치',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            ListTile(
                              title:Text(
                                '추후 업데이트',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                  minHeight: 0,
                  minChild: Container(color: Colors.grey[400],),
                )),
          ],
        );
      }),
    );
  }
}