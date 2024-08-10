import 'package:flutter/material.dart';
import 'package:pod_mood/components/navigation_element.dart';
import 'package:pod_mood/views/Events/events_home_page.dart';
import 'package:pod_mood/views/Home/home_page.dart';
import 'package:pod_mood/views/Podcasts/podcasts_home_page.dart';
import 'package:pod_mood/views/Profile/profile_home_page.dart';
import 'package:pod_mood/views/Radio/radio_home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  final _pages =  [
    HomePage(),
    const RadioHomePage(),
    const PodcastsHomePage(),
    const EventsHomePage(),
    const ProfileHomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _pages.elementAt(_selectedIndex),
    );
  }
}
