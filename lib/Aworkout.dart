import 'package:fitness/Bworkout.dart';
import 'package:fitness/Bworkout1.dart';
import 'package:fitness/Home%20page.dart';
import 'package:fitness/iworkout.dart';
import 'package:fitness/iworkout2.dart';
import 'package:flutter/material.dart';
import 'package:fitness/profile.dart';

import 'Favorites.dart';

class AWorkout extends StatelessWidget {
  AWorkout({Key? key}) : super(key: key);
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
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
        ),
        title: Text(
          'Workout',
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
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Homepage())); // Handle person button press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BWorkout()),
                    ); // Handle text button press
                  },
                  child: Text(
                    'Beginner',
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
                    // Handle text button press
                  },
                  child: Text(
                    'Intermediate',
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
                      MaterialPageRoute(builder: (context) => iWorkout()),
                    ); // Handle text button press
                  },
                  child: Text(
                    'Advanced',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              Positioned(
                right: 30,
                top: -50,
                left: 30,
                child: GestureDetector(
                  onTap: () {
                    // Handle image button press
                  },
                  child: Image.network(
                    'https://post.healthline.com/wp-content/uploads/2019/09/exercise-african-american-outside-outdoors-squat-1296x728-header-1296x728.jpg',
                    height: 400,
                    width: 400,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Functional Training',
                        style: TextStyle(
                          color: Color(0xFFDDF863),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.timer, color: Colors.white, size: 16),
                              SizedBox(width: 5),
                              Text('45 Minutes', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.whatshot, color: Colors.white, size: 16),
                              SizedBox(width: 5),
                              Text('1450 Kcal', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.fitness_center, color: Colors.white, size: 16),
                              SizedBox(width: 5),
                              Text('5 Exercises', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Icon(Icons.star_border, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => iWorkout2()),
                                  ); // Handle image button press
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
              )
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Favorites()),
                );
              },
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {},
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildWorkoutCard({required String title, required String duration, required String calories, required String exercises, required String imageUrl}) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  '$duration       $calories\n$exercises',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ],
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
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
