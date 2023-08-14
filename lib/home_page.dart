import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: const HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget builder(BuildContext contexts) {
    return MaterialApp();
  }

  final List<Widget> _screens = [
    // Content for Accounts tab

    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 100),

      // header welcome msg
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text('Good morning,'),
      ),

      const SizedBox(height: 4),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          "Let's get things in order for you",
        ),
      ),

      const SizedBox(height: 40),

      // Buttons for savings accounts screens
      Container(
        margin: EdgeInsets.only(left: 40),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            alignment: Alignment.center,
            backgroundColor: const Color(0xFFE0E0E0),
            fixedSize: Size(300, 80),
          ),
          child: Text(
            "Savings Account1\n 2737234723",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),

      const SizedBox(height: 20),

      Container(
        margin: EdgeInsets.only(left: 40),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            alignment: Alignment.center,
            backgroundColor: const Color(0xFFE0E0E0),
            fixedSize: Size(300, 80),
          ),
          child: Text(
            "Savings Account2\n 2737234723",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),

      const SizedBox(height: 20),

      Container(
        margin: EdgeInsets.only(left: 40),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            alignment: Alignment.center,
            backgroundColor: const Color(0xFFE0E0E0),
            fixedSize: Size(300, 80),
          ),
          child: Text(
            "Savings Account3\n 2737234723",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(height: 20),

      Container(
        margin: EdgeInsets.only(left: 40),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            alignment: Alignment.center,
            backgroundColor: const Color(0xFFE0E0E0),
            fixedSize: Size(300, 80),
          ),
          child: Text(
            "Savings Account4\n 2737234723",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),

      const SizedBox(height: 20),

      Container(
        margin: EdgeInsets.only(left: 40),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            alignment: Alignment.center,
            backgroundColor: const Color(0xFFE0E0E0),
            fixedSize: Size(300, 80),
          ),
          child: Text(
            "Savings Account5\n 2737234723",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ]),

    // Content for Transfer tab
    Container(
      alignment: Alignment.center,
      child: const Text(
        'Transfer',
        style: TextStyle(fontSize: 40),
      ),
    ),

    // Content for Pay bills tab
    Container(
      alignment: Alignment.center,
      child: const Text(
        'Pay bills',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      alignment: Alignment.center,
      child: const Text(
        'Invest',
        style: TextStyle(fontSize: 40),
      ),
    ),
    // Content for Settings tab
    Container(
      alignment: Alignment.center,
      child: const Text(
        'Settings',
        style: TextStyle(fontSize: 40),
      ),
    )
  ];

  //bottom nav bar for mobile view
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MediaQuery.of(context).size.width < 640
          ? BottomNavigationBar(
              currentIndex: _selectedIndex,
              unselectedItemColor: Colors.black,
              selectedItemColor: Color(0xFFEE0F37),
              // called when one tab is selected
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              // bottom tab items
              items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.wallet), label: 'Accounts'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.send_outlined), label: 'Transfer'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.payment_outlined), label: 'Pay Bills'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.bar_chart_outlined), label: 'Invest'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'Settings')
                ])
          : null,

      //left side nav bar for web view
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 640)
            NavigationRail(
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              selectedIndex: _selectedIndex,
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.wallet), label: Text('Accounts')),
                NavigationRailDestination(
                    icon: Icon(Icons.send_outlined), label: Text('Transfer')),
                NavigationRailDestination(
                    icon: Icon(Icons.payment_outlined),
                    label: Text('Pay Bills')),
                NavigationRailDestination(
                    icon: Icon(Icons.bar_chart_outlined),
                    label: Text('Invest')),
                NavigationRailDestination(
                    icon: Icon(Icons.settings), label: Text('Settings')),
              ],
              labelType: NavigationRailLabelType.all,
              selectedLabelTextStyle: const TextStyle(
                color: Color(0xFFEE0F37),
              ),
              minWidth: 20,
              selectedIconTheme: IconThemeData(color: Color(0xFFEE0F37)),
              unselectedLabelTextStyle: const TextStyle(),
            ),
          Expanded(child: _screens[_selectedIndex])
        ],
      ),
    );
  }
}
