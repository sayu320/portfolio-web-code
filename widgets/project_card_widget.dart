import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';
import 'package:portfolio_web/utils/project_utils.dart';
import 'dart:js' as js;

import 'package:portfolio_web/widgets/screenshots/blood_donation.dart';
import 'package:portfolio_web/widgets/screenshots/coffee_shop.dart';
import 'package:portfolio_web/widgets/screenshots/fruits_app.dart';
import 'package:portfolio_web/widgets/screenshots/gadgets_cart.dart';
import 'package:portfolio_web/widgets/screenshots/money_manager.dart';
import 'package:portfolio_web/widgets/screenshots/netflix_clone.dart';
import 'package:portfolio_web/widgets/screenshots/news_app.dart';
import 'package:portfolio_web/widgets/screenshots/todo_app.dart';
import 'package:portfolio_web/widgets/screenshots/travel_app.dart';
import 'package:portfolio_web/widgets/screenshots/weather_app.dart';

class ProjectCardWidget extends StatelessWidget {
  ProjectCardWidget({super.key, required this.project});
  final ProjectUtils project;

  final List pages = [
    const MoneyManager(),
    const BloodDonation(),
    const GadgetsCart(),
    const CoffeeShop(),
    const FruitsApp(),
    const NetflixClone(),
    const NewsApp(),
    const TodoApp(),
    const TravelApp(),
    const WeatherApp()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 450,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //project image
          ClipRect(
            child: Image.asset(
              project.image,
              height: 320,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: CustomColor.whitePrimary),
            ),
          ),
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                  fontSize: 12, color: CustomColor.whiteSecondary),
            ),
          ),
          const Spacer(),
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (project.webLink != null)
                  InkWell(
                      onTap: () {
                        js.context.callMethod("open", [project.webLink]);
                      },
                      child: Image.asset(
                        'lib/assets/wide.png',
                        width: 20,
                      )),
                InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.githubLink]);
                    },
                    child: Image.asset(
                      'lib/assets/Git-Icon-1788C.png',
                      width: 16,
                    )),
                InkWell(
                    onTap: () {
                      int index = pages.indexWhere((page) =>
                          page.runtimeType == project.page.runtimeType);
                      if (index != -1) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => pages[index],
                        ));
                      }
                    },
                    child: Image.asset(
                      'lib/assets/gallery_icon.png',
                      width: 17,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
