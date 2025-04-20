import 'package:bookingapp/Screens/SelectAddress/SelectAddresspage.dart';
// Import the drawer
import 'package:flutter/material.dart';
import '../../utils/Constants/Const_Colors.dart';
import 'Widgets/CustomDrawer.dart';
import 'Widgets/Draggablescroller.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double _sheetSize = 0.3;

  void _onSearchBarTapped() {
    setState(() {
      _sheetSize = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const Customdrawer(),
      body: Stack(
        children: [
          /// Map Background
          Positioned.fill(
            child: Image.asset(
              'images/drivers.png',
              fit: BoxFit.cover,
            ),
          ),

          /// Top Menu Button (opens drawer)
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    'images/ic_menu.png',
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
            ),
          ),

          CustomdraggableScroller(
            initialsize: 0.3,
            minchildsize: 0.1,
            maxchildsize: 1.0,
            child:
            Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(1, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      "Search...",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                )
            ),

            ),

          /// Floating GPS Button
          Positioned(
            bottom: 250,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Add your GPS logic
              },
              backgroundColor: Colors.white,
              child: Icon(Icons.gps_fixed, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}


