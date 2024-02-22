import 'package:flutter/material.dart';
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

class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final Widget page;
  final String? githubLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.page,
    this.githubLink,
    this.webLink,
  });
}

List<ProjectUtils> flutterProjectUtils = [
  ProjectUtils(
      image: 'lib/assets/money_manager.png',
      title: 'Money Manager App',
      subtitle: 'This app is used to manage our income and expenses',
      page: const MoneyManager(),
      webLink: 'https://sayu320.github.io/',
      githubLink: 'https://github.com/sayu320/flutter-project.git'),
  ProjectUtils(
      image: 'lib/assets/blood_donation.png',
      title: 'Blood Donation App',
      subtitle:
          'App to add the detils of blood donors such as their name,blood group and number',
      page: const BloodDonation(),
      githubLink: 'https://github.com/sayu320/blood-donation-app.git'),
  ProjectUtils(
      image: 'lib/assets/gadgets_cart.png',
      title: 'Gadgets Cart App',
      subtitle:
          'Add and remove your favourite gadgets to the cart, built using provider',
      page: const GadgetsCart(),
      githubLink: 'https://github.com/sayu320/provider_cart.git'),
  ProjectUtils(
      image: 'lib/assets/coffee_shop.png',
      title: 'Coffee Shop App',
      subtitle:
          'Pick your favourite coffee and add it the cart, built using provider',
      page: const CoffeeShop(),
      githubLink: 'https://github.com/sayu320/coffee-shop-app.git'),
  ProjectUtils(
      image: 'lib/assets/fruits_app.png',
      title: 'Fruits App',
      subtitle:
          'Choose your favourite fruits and add to the cart, built using BloC',
      page: const FruitsApp(),
      githubLink: 'https://github.com/sayu320/ecommerce-app-using-bloc.git'),
  ProjectUtils(
      image: 'lib/assets/netflix_clone.png',
      title: 'Netflix Clone App',
      subtitle: 'Netflix clone app built using BloC',
      page: const NetflixClone(),
      githubLink: 'https://github.com/sayu320/netflix-app-using-bloc.git'),
  ProjectUtils(
      image: 'lib/assets/news_app.png',
      title: 'News App',
      subtitle:
          'News app built using news API whcih shows the current news and details',
      page: const NewsApp(),
      githubLink: 'https://github.com/sayu320/news_api_provider.git'),
  ProjectUtils(
      image: 'lib/assets/todo_app.png',
      title: 'To Do App',
      subtitle: 'App for adding tasks, data is stored using firebase ',
      page: const TodoApp(),
      githubLink: 'https://github.com/sayu320/todo-app-using-firebase.git'),
  ProjectUtils(
      image: 'lib/assets/travel_ui.png',
      title: 'Travel App UI',
      subtitle: 'Simple user interface of Thailand Hotels',
      page: const TravelApp(),
      githubLink: 'https://github.com/sayu320/travel-ui-tutorial.git'),
  ProjectUtils(
      image: 'lib/assets/weather_app.png',
      title: 'Weather App',
      subtitle:
          'Weather app which fetches current weather details built using weather API',
      page: const WeatherApp(),
      githubLink: 'https://github.com/sayu320/flutter-weather-app.git')
];
