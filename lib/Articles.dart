import 'package:fitness/Favorites.dart';
import 'package:fitness/profile.dart';
import 'package:flutter/material.dart';
import 'package:fitness/Videos.dart';

class Articles extends StatelessWidget {
  Articles({Key? key}) : super(key: key);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252525),
      appBar: AppBar(
        backgroundColor: Color(0xFF252525),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFFDDF863)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountPage()),
            );
          },
        ),
        title: Text(
          'Favorites',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined, color: Color(0xFFDDF863)),
            onPressed: () {
              // Handle search button press
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Color(0xFFDDF863)),
            onPressed: () {
              // Handle notifications button press
            },
          ),
          IconButton(
            icon: Icon(Icons.person, color: Color(0xFFDDF863)),
            onPressed: () {
              // Handle person button press
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  'Sort by',
                  style: TextStyle(
                    color: Color(0xFFDDF863),
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Favorites()),
                    );// Handle text button press
                  },
                  child: Text(
                    'ALL',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => videos()),
                    );
                  },
                  child: Text(
                    'Videos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDDF863),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Articles()),
                    );// Handle text button press
                  },
                  child: Text(
                    'Article',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: [
                Padding(
                  padding: EdgeInsets.zero,
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          '        UPPER BODY\n\n'
                              '    60 Minutes       1320 Kcal\n    5 exercises',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: -25,
                        child: GestureDetector(
                          onTap: () {
                            // Handle image button press
                          },
                          child: ClipRect(
                            child: Image.network(
                              'https://images.pexels.com/photos/2294361/pexels-photo-2294361.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                              height: 150,
                              width: 150,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        '\n    BOOST ENERGY AND\n     VITALITY\n\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: -25,
                      child: GestureDetector(
                        onTap: () {
                          // Handle image button press
                        },
                        child: ClipRect(
                          child: Image.network(
                            'https://images.pexels.com/photos/2294361/pexels-photo-2294361.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        '        PULL OUT\n\n'
                            '    30 Minutes       1210 Kcal\n    10 exercises',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: -25,
                      child: GestureDetector(
                        onTap: () {
                          // Handle image button press
                        },
                        child: ClipRect(
                          child: Image.network(
                            'https://images.pexels.com/photos/2294361/pexels-photo-2294361.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        '\n    Lower Body\n    Blast\n\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: -25,
                      child: GestureDetector(
                        onTap: () {
                          // Handle image button press
                        },
                        child: ClipRect(
                          child: Image.network(
                            'https://images.pexels.com/photos/2294361/pexels-photo-2294361.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 600,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        '        AVOCADO AND\n        EGG TOAST \n\n'
                            '        1210 Kcal\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: -25,
                      child: GestureDetector(
                        onTap: () {
                          // Handle image button press
                        },
                        child: ClipRRect(
                          child: Image.network(
                            'https://images.pexels.com/photos/2294361/pexels-photo-2294361.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFDDF863),
        unselectedItemColor: Color(0xFFDDF863),
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.folder_copy, color: Colors.white),
              onPressed: () {},
            ),
            label: 'Files',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.star, color: Colors.white),
              onPressed: () {},
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Favorites()),
                );
              },
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


