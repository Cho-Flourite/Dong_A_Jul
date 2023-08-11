import 'package:dong_a_jul/view/bottom_sheets/bottom_sheet.dart';
import 'package:dong_a_jul/view/notification_pages/notification.dart';
import 'package:dong_a_jul/view/profile_pages/profile.dart';
import 'package:dong_a_jul/view/main_pages/searching/main_searching.dart';
import 'package:dong_a_jul/view/main_pages/today/main_today.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

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
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print


    FlutterNativeSplash.remove();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainPage(),
    );
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
    return Stack(clipBehavior: Clip.none, children: [
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
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationPage()),
                      );
                    },
                    icon: const Icon(Icons.notifications_none_sharp)),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyProfile()),
                      );
                    },
                    icon: const Icon(Icons.person)),
              ],
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
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '탐색',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 190)
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
      MyBottomSheet(),

    ]);
  }
}
