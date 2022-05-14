import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tbib_font_responsive/tbib_font_responsive.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // use font google in h1 and h1Dark
  TBIBFontStyle.lisenGoogleFont(GoogleFonts.aBeeZee(), h: 1);

  // use custom font in h3 and h3Dark only
  TBIBFontStyle.addCustomFont("BerthaMelanie", h: 3);

  // use custom font in all
  TBIBFontStyle.addCustomFont("BerthaMelanie");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          builder: (context, child) {
            ScreenUtil.init(context);
            log("old ${TBIBFontStyle.h1.fontSize}");
            ResponiveFont();
            return child!;
          },
          home: const MyHomePage(title: ""),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDark = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log("new ${TBIBFontStyle.h1.fontSize}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              },
              icon: const Icon(Icons.brightness_4))
        ],
      ),
      body: Container(
          color: isDark ? Colors.black : null,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Text custom font",
                  style: isDark ? TBIBFontStyle.h1Dark : TBIBFontStyle.h1,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Text color mode",
                  style: isDark ? TBIBFontStyle.h2Dark : TBIBFontStyle.h2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Text color mode",
                  style: isDark ? TBIBFontStyle.h3Dark : TBIBFontStyle.h3,
                ),
              ],
            ),
          )),
    );
  }
}
