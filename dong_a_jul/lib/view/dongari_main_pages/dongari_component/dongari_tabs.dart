
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dongari_sphd.dart';

Widget DongariTabs(Widget widget) {
  return SafeArea(
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
                maxHeight: 10000,
                maxChild: widget,
                minHeight: 0,
                minChild: Container(color: Colors.grey[400],),
              )),
        ],
      );
    }),
  );
}