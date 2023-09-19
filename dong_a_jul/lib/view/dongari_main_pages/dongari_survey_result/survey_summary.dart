
import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey_result/summary_component.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:vertical_barchart/vertical-barchart.dart';
import 'package:vertical_barchart/vertical-barchartmodel.dart';
import 'package:vertical_barchart/vertical-legend.dart';

import '../dongari_component/app_colors.dart';
import '../dongari_component/indicator.dart';

class SurveySummary extends StatefulWidget {
  const SurveySummary({super.key});

  @override
  State<SurveySummary> createState() => _SurveySummaryState();
}

class _SurveySummaryState extends State<SurveySummary> {
  bool _textColor = false;
  bool _color = false;
  bool _height = false;
  bool _icon = false;
  int touchedIndex = -1;


  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 90.0 : 80.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.contentColorBlue,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.contentColorYellow,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: AppColors.contentColorPurple,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: AppColors.contentColorGreen,
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.mainTextColor1,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }

  List<VBarChartModel> bardata = [
    VBarChartModel(
      index: 0,
      label: "Strawberry",
      colors: [Colors.orange, Colors.deepOrange],
      jumlah: 20,
      tooltip: "20 Pcs",
      description: Text(
        "Most selling fruit last week",
        style: TextStyle(fontSize: 10),
      ),
    ),
    VBarChartModel(
      index: 1,
      label: "Apple",
      colors: [Colors.orange, Colors.deepOrange],
      jumlah: 55,
      tooltip: "55 Pcs",
      description: Text(
        "Most selling fruit this week",
        style: TextStyle(fontSize: 10),
      ),
    ),
    VBarChartModel(
      index: 2,
      label: "Broccoli",
      colors: [Colors.teal, Colors.indigo],
      jumlah: 12,
      tooltip: "12 Pcs",
    ),
    VBarChartModel(
      index: 3,
      label: "Chilli",
      colors: [Colors.teal, Colors.indigo],
      jumlah: 5,
      tooltip: "5 Pcs",
    ),
    VBarChartModel(
      index: 4,
      label: "Manggo",
      colors: [Colors.orange, Colors.deepOrange],
      jumlah: 15,
      tooltip: "15 Pcs",
    ),
    VBarChartModel(
      index: 5,
      label: "Asparagus",
      colors: [Colors.teal, Colors.indigo],
      jumlah: 30,
      tooltip: "30 Pcs",
      description: Text(
        "Favorites vegetables",
        style: TextStyle(fontSize: 10),
      ),
    ),
  ];

  Widget _buildGrafik(List<VBarChartModel> bardata) {
    return VerticalBarchart(
      maxX: 55,
      data: bardata,
      showLegend: true,
      alwaysShowDescription: true,
      showBackdrop: true,
      background: Colors.transparent,
      legend: [
        Vlegend(
          isSquare: false,
          color: Colors.orange,
          text: "Fruits",
        ),
        Vlegend(
          isSquare: false,
          color: Colors.teal,
          text: "Vegetables",
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20, top: 10, right: 300, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange[800],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      '56',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    Text(
                      ' 명 응답',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          child: Column(
              children: List.generate(1, (index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: AnimatedContainer(
                  height:
                      _height ? MediaQuery.of(context).size.height * 0.7 : 120,
                  duration: Duration(milliseconds: 300),
                  child: Scaffold(
                    body: NestedScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        headerSliverBuilder:
                            (BuildContext context, bool innerBoxIsScrolled) {
                          return <Widget>[
                            SliverOverlapAbsorber(
                              handle: NestedScrollView
                                  .sliverOverlapAbsorberHandleFor(context),
                              sliver: SliverAppBar(
                                expandedHeight: 120.0,
                                title: Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '${index + 1}번 문항',
                                      style: TextStyle(
                                          color: _textColor
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                                automaticallyImplyLeading: false,
                                flexibleSpace: FlexibleSpaceBar(
                                  background: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          '지원자님께서 Gamemakers에 지원하시게된 동기를 솔직하게 작성해 주세요.',
                                          style: TextStyle(
                                              color: _textColor
                                                  ? Colors.white
                                                  : Colors.black,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                actions: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _height = !_height;
                                          _color = !_color;
                                          _textColor = !_textColor;
                                          _icon = !_icon;
                                        });
                                      },
                                      icon: Icon(
                                        _icon
                                            ? Icons.keyboard_arrow_up
                                            : Icons.keyboard_arrow_down,
                                        color: _textColor
                                            ? Colors.white
                                            : Colors.black,
                                      )),
                                ],
                                pinned: true,
                                backgroundColor: _color
                                    ? Colors.orange.shade800
                                    : Colors.white,
                                forceElevated: innerBoxIsScrolled,
                              ),
                            )
                          ];
                        },
                        body: SurveyBox(
                          Container(
                            color: Colors.white,
                            child: Column(
                                children: List.generate(5, (index) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey[200],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg'),
                                              radius: 20,
                                            ),
                                            Text(
                                              '  이지금',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            '저는 게임 개발에 큰 관심과 열정을 가지고 있습니다. 게임은 저에게 창의력과 문제 해결 능력을 기르는 좋은 수단이 되었고, 항상 새로운 세계를 탐험하고 싶은 욕구를 충족시켜 주었습니다. 게임 개발 동아리에 참여하여 함께 협력하고 아이디어를 공유하는 동료들과 함께 즐겁게 게임을 만들어보고 싶습니다. 또한, 동아리 활동을 통해 다양한 분야의 전문성을 배우고 실전 경험을 쌓아보고자 합니다. 저의 열정과 노력으로 동아리에 기여하며, 게임 개발을 통해 성장하는 모습을 보여드리겠습니다.',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })),
                          ),
                        )),
                  ),
                ),
              ),
            );
          }).toList()),
        ),
        Container(
          color: Colors.grey[200],
          child: Column(
              children: List.generate(1, (index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: AnimatedContainer(
                  height:
                      _height ? MediaQuery.of(context).size.height * 0.7 : 120,
                  duration: Duration(milliseconds: 300),
                  child: Scaffold(
                    body: NestedScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      headerSliverBuilder:
                          (BuildContext context, bool innerBoxIsScrolled) {
                        return <Widget>[
                          SliverOverlapAbsorber(
                            handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                                    context),
                            sliver: SliverAppBar(
                              expandedHeight: 120.0,
                              title: Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${index + 1}번 문항',
                                    style: TextStyle(
                                        color: _textColor
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                              automaticallyImplyLeading: false,
                              flexibleSpace: FlexibleSpaceBar(
                                background: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        '지원자님께서 Gamemakers에 지원하시게된 동기를 솔직하게 작성해 주세요.',
                                        style: TextStyle(
                                            color: _textColor
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              actions: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _height = !_height;
                                        _color = !_color;
                                        _textColor = !_textColor;
                                        _icon = !_icon;
                                      });
                                    },
                                    icon: Icon(
                                      _icon
                                          ? Icons.keyboard_arrow_up
                                          : Icons.keyboard_arrow_down,
                                      color: _textColor
                                          ? Colors.white
                                          : Colors.black,
                                    )),
                              ],
                              pinned: true,
                              backgroundColor: _color
                                  ? Colors.orange.shade800
                                  : Colors.white,
                              forceElevated: innerBoxIsScrolled,
                            ),
                          )
                        ];
                      },
                      body: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: _buildGrafik(bardata),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList()),
        ),
        Container(
          color: Colors.grey[200],
          child: Column(
              children: List.generate(1, (index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: AnimatedContainer(
                      height:
                      _height ? MediaQuery.of(context).size.height * 0.7 : 120,
                      duration: Duration(milliseconds: 300),
                      child: Scaffold(
                        body: NestedScrollView(
                          physics: NeverScrollableScrollPhysics(),
                          headerSliverBuilder:
                              (BuildContext context, bool innerBoxIsScrolled) {
                            return <Widget>[
                              SliverOverlapAbsorber(
                                handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                                    context),
                                sliver: SliverAppBar(
                                  expandedHeight: 120.0,
                                  title: Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${index + 1}번 문항',
                                        style: TextStyle(
                                            color: _textColor
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  automaticallyImplyLeading: false,
                                  flexibleSpace: FlexibleSpaceBar(
                                    background: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            '지원자님께서 Gamemakers에 지원하시게된 동기를 솔직하게 작성해 주세요.',
                                            style: TextStyle(
                                                color: _textColor
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _height = !_height;
                                            _color = !_color;
                                            _textColor = !_textColor;
                                            _icon = !_icon;
                                          });
                                        },
                                        icon: Icon(
                                          _icon
                                              ? Icons.keyboard_arrow_up
                                              : Icons.keyboard_arrow_down,
                                          color: _textColor
                                              ? Colors.white
                                              : Colors.black,
                                        )),
                                  ],
                                  pinned: true,
                                  backgroundColor: _color
                                      ? Colors.orange.shade800
                                      : Colors.white,
                                  forceElevated: innerBoxIsScrolled,
                                ),
                              )
                            ];
                          },
                          body: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: AspectRatio(
                                aspectRatio: 1.3,
                                child: Row(
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Expanded(
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: PieChart(
                                          PieChartData(
                                            pieTouchData: PieTouchData(
                                              touchCallback: (FlTouchEvent event, pieTouchResponse) {
                                                setState(() {
                                                  if (!event.isInterestedForInteractions ||
                                                      pieTouchResponse == null ||
                                                      pieTouchResponse.touchedSection == null) {
                                                    touchedIndex = -1;
                                                    return;
                                                  }
                                                  touchedIndex = pieTouchResponse
                                                      .touchedSection!.touchedSectionIndex;
                                                });
                                              },
                                            ),
                                            borderData: FlBorderData(
                                              show: false,
                                            ),
                                            sectionsSpace: 3,
                                            centerSpaceRadius: 40,
                                            sections: showingSections(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Indicator(
                                          color: AppColors.contentColorBlue,
                                          text: 'First',
                                          isSquare: true,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Indicator(
                                          color: AppColors.contentColorYellow,
                                          text: 'Second',
                                          isSquare: true,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Indicator(
                                          color: AppColors.contentColorPurple,
                                          text: 'Third',
                                          isSquare: true,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Indicator(
                                          color: AppColors.contentColorGreen,
                                          text: 'Fourth',
                                          isSquare: true,
                                        ),
                                        SizedBox(
                                          height: 18,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 28,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList()),
        ),
      ],
    );
  }
}
