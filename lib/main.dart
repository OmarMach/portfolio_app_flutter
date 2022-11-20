import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/education_page.dart';

import 'pages/intro_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Vidaloka',
        canvasColor: const Color.fromARGB(255, 220, 220, 220),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 67, 67, 67),
            textStyle: const TextStyle(
              fontFamily: 'Vidaloka',
              letterSpacing: 1.5,
              fontSize: 20,
            ),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController controller;
  late int currentPage;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    currentPage = 0;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      IntroPage(controller: controller),
      const AboutPage(),
      const EducationPage(),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                    controller: controller,
                    onPageChanged: (value) => setState(() {
                      currentPage = value;
                    }),
                    scrollDirection: Axis.vertical,
                    itemCount: pages.length,
                    itemBuilder: (context, index) => pages.elementAt(index),
                  ),
                  Builder(builder: (context) {
                    return currentPage == 0
                        ? Container()
                        : Positioned(
                            top: 0,
                            bottom: 0,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.menu),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.person),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.school),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.work),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.star_rounded),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
