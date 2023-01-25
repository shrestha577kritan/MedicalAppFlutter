import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medicalapp/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411, 866),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Medical App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Navigation(),
        );
      },
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPage = 0;
  final screens = [
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        elevation: 0,
        // backgroundColor: Colors.blue[200],
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: currentPage == 0
                  ? Icon(
                      Icons.home,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.home_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: currentPage == 1
                  ? Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: 'Canender'),
          BottomNavigationBarItem(
              icon: currentPage == 2
                  ? Icon(
                      Icons.notifications,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.notifications_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: currentPage == 3
                  ? Icon(
                      Icons.person,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.person_outline,
                      color: Colors.grey.shade700,
                    ),
              label: 'Person'),
          BottomNavigationBarItem(
              icon: currentPage == 4
                  ? Icon(
                      Icons.search,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.search_outlined,
                      color: Colors.grey.shade700,
                    ),
              label: 'Search'),
        ],
      ),
      body: IndexedStack(
        index: currentPage,
        children: screens,
      ),
    );
  }
}
