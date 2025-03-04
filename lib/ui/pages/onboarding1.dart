import 'package:youlearn2/theme/box_icons_icons.dart';
import 'package:youlearn2/ui/pages/navmenu/menu_dashboard.dart';
import 'package:flutter/cupertino.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController controller = PageController(initialPage: 0);
  int? pageNumber;
  List widgets = [];
  @override
  void initState() {
    pageNumber = 0;
    super.initState();
  }

  void createWidgets() {
    widgets.addAll([
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/1.png'),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: const Text(
              "Easy access to video lectures, & reading materials.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Red Hat Display',
                  fontSize: 14,
                  color: Color(0xFFFFFFFF)),
            ),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/2.png'),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: const Text(
              "Ask questions, earn coins and dominate the global leaderboard.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Red Hat Display',
                  fontSize: 14,
                  color: Color(0xFFFFFFFF)),
            ),
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/logo.png'),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: const Text(
              "E-Learn",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Red Hat Display',
                  fontSize: 28,
                  color: Color(0xFFFFFFFF)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: const Text(
              "The complete E-learning solution for students of all ages!\n\n\nJoin for FREE now!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Red Hat Display',
                  fontSize: 14,
                  color: Color(0xFFFFFFFF)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          CupertinoButton(
              color: const Color(0xFFFFFFFF),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Sign in with Google ➡",
                    style: TextStyle(
                        fontFamily: 'Red Hat Display',
                        fontSize: 16,
                        color: Color(0xFF0083BE),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => MenuDashboardLayout()));
              })
        ],
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    createWidgets();
    return CupertinoPageScaffold(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFABDCFF),
                Color(0xFF0396FF),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
          ),
          Positioned(
              top: 0, left: 0, child: Image.asset('assets/images/wave.png')),
          Align(
            alignment: Alignment.center,
            child: PageView.builder(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    pageNumber = value;
                  });
                },
                itemCount: 3,
                itemBuilder: (context, index) => widgets[index]),
          ),
          pageNumber == 2
              ? Container()
              : Positioned(
                  bottom: 10,
                  right: 10,
                  child: CupertinoButton(
                    child: Icon(
                      pageNumber == 1
                          ? BoxIcons.bx_check
                          : BoxIcons.bx_chevron_right,
                      color: const Color(0xFFFFFFFF),
                      size: 30,
                    ),
                    onPressed: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.fastOutSlowIn);
                    },
                  ))
        ],
      ),
    );
  }
}