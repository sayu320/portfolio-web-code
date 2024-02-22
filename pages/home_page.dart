import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';
import 'package:portfolio_web/constants/size.dart';
import 'package:portfolio_web/widgets/contact_section.dart';
import 'package:portfolio_web/widgets/drawer_mobile.dart';
import 'package:portfolio_web/widgets/footer.dart';
import 'package:portfolio_web/widgets/header_desktop.dart';
import 'package:portfolio_web/widgets/header_mobile.dart';
import 'package:portfolio_web/widgets/main_desktop.dart';
import 'package:portfolio_web/widgets/main_mbile.dart';
import 'package:portfolio_web/widgets/project_section.dart';
import 'package:portfolio_web/widgets/skill_mobile.dart';
import 'package:portfolio_web/widgets/skills_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                    //call function
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  key: navbarKeys.first,
                ),
                // main
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                      //call function
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                const SizedBox(
                  height: 20,
                ),

                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),

                //skills
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'What I can do',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whiteSecondary),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const SkillsDesktop()
                      else
                        const SkillsMobile()
                    ],
                  ),
                ),

                //projects
                ProjectSection(
                  key: navbarKeys[2],
                ),

                const SizedBox(
                  height: 30,
                ),

                //contact
                ContactSection(
                  key: navbarKeys[3],
                ),

                const SizedBox(),
                //footer
                const Footer()
              ],
            ),
          ));
    });
  }

  //fucntion required for scrolling
  void scrollToSection(int navIndex) {
    // if (navIndex == 4){
    //   //open a blog
    //   return;
    // }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
