import 'dart:convert';
import 'package:dong_a_jul/view/bottom_sheets/bottom_sheet.dart';
import 'package:dong_a_jul/view/bottom_sheets/scroller.dart';
import 'package:dong_a_jul/view/notification_pages/notification.dart';
import 'package:dong_a_jul/view/profile_pages/profile.dart';
import 'package:dong_a_jul/view/main_pages/searching/main_searching.dart';
import 'package:dong_a_jul/view/main_pages/today/main_today.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'model/club.dart';

Future main() async {
  await initializeDateFormatting();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future fetch() async {
    final url = Uri.parse("http://3.37.39.109:8080/api/v1/allclub");

    final response = await http.get(url);

    final Map<String, dynamic> data =
        jsonDecode(utf8.decode(response.bodyBytes)); // json data

    List<dynamic> clubList = data['list'];

    if (response.statusCode == 200) {
      setState(() {
        clubList.forEach((e) {
          Club club = Club.fromJson(e);
          Get.find<DataController>().addClub(club); // 컨트롤러를 이용하여 clubs리스트에 추가
        });
      });
      return;
    } else {
      print("실패");
      throw Exception('Failed to load');
    }
  }

  @override
  void initState() {
    super.initState();
    initialization();
    fetch();
  }

  bool isScrolled = false;

  void initialization() async {
    FlutterNativeSplash.remove();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Scroller())],
      child: Consumer<Scroller>(builder: (context, scroller, _) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: MainPage(),
          initialBinding: BindingsBuilder((){
            Get.put(DataController());
          }),
        );
      }),
    );
  }
}

class DataController extends GetxController{
  RxList<Club> clubs = <Club>[].obs;

  void addClub(Club club) {
    clubs.add(club);
  }
}
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(clipBehavior: Clip.none, children: [
        Positioned(
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                elevation: 0.0,
                leading: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'pictures/image/logo.png',
                  ),
                ),
                title: const Text(
                  '동아줄 ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.orange[800],
                shadowColor: Colors.orangeAccent,
                bottom: const TabBar(
                  isScrollable: true,
                  indicatorWeight: 2.0,
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  // labelPadding: EdgeInsets.all(6),
                  padding: EdgeInsets.all(3),
                  tabs: [
                    Text(
                      '오늘의 동아리',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '탐색',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 190),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  TodaysClub(),
                  Searching(),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
