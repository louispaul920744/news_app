import 'package:flutter/material.dart';
import 'package:news_app/services/api_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List newsList;

  @override
  void initState() {
    super.initState();
    // getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void getNews() async {
    // newsList = await ApiServices.fetchNews();
  }
}
