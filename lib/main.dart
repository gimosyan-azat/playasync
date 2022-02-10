import 'package:flutter/material.dart';
import 'package:playasync/global_vars.dart';
import 'package:playasync/views/MainPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF5F6F7),
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.openSans().fontFamily,
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.black))),
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                'Home',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.w600, fontSize: 19),
              ),
              leading: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('images/icons/category.svg'),
                color: Colors.black,
                padding: const EdgeInsets.only(left: defaultPadding),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('images/icons/notifications.svg'),
                  color: Colors.black,
                  padding: const EdgeInsets.only(right: defaultPadding),
                ),
              ]),
          body: const MainPage()),
    );
  }
}
