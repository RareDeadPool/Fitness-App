import 'package:fitness/mealplanmealidea.dart';
import 'package:flutter/material.dart';
import 'breakfastplanpage.dart';
import 'caloriegoalpage.dart';
import 'mealideapage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Plans',
      home: MealPlansPage1(),
    );
  }
}

class MealPlansPage1 extends StatefulWidget {
  @override
  _MealPlansPage1State createState() => _MealPlansPage1State();
}

class _MealPlansPage1State extends State<MealPlansPage1> {
  String _selectedDiet = '';
  String _selectedAllergy = '';
  String _selectedMealType = '';
  int _selectedIndex = 0;

  void _onDietChanged(String? value) {
    setState(() {
      _selectedDiet = value ?? '';
    });
  }

  void _onAllergyChanged(String? value) {
    setState(() {
      _selectedAllergy = value ?? '';
    });
  }

  void _onMealTypeChanged(String? value) {
    setState(() {
      _selectedMealType = value ?? '';
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Meal Plans',
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MealIdeasPage()),
            ); // Add your onPressed code here!
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Dietary Preferences Section
            Text(
              'Dietary Preferences',
              style: TextStyle(
                color: Color(0xFFCEFF00),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'What are your dietary preferences?',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),
            Column(
              children: [
                RadioListTile<String>(
                  title: Text('Vegetarian', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Vegetarian',
                  groupValue: _selectedDiet,
                  onChanged: _onDietChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('Vegan', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Vegan',
                  groupValue: _selectedDiet,
                  onChanged: _onDietChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('Gluten-Free', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Gluten-Free',
                  groupValue: _selectedDiet,
                  onChanged: _onDietChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('Keto', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Keto',
                  groupValue: _selectedDiet,
                  onChanged: _onDietChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('Paleo', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Paleo',
                  groupValue: _selectedDiet,
                  onChanged: _onDietChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('No preferences', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'No preferences',
                  groupValue: _selectedDiet,
                  onChanged: _onDietChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
              ],
            ),
            // Allergies Section
            SizedBox(height: 16),
            Text(
              'Allergies',
              style: TextStyle(
                color: Color(0xFFCEFF00),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Do you have any food allergies we should know about?',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),
            Column(
              children: [
                RadioListTile<String>(
                  title: Text('Nuts', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Nuts',
                  groupValue: _selectedAllergy,
                  onChanged: _onAllergyChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('Dairy', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Dairy',
                  groupValue: _selectedAllergy,
                  onChanged: _onAllergyChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('Shellfish', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Shellfish',
                  groupValue: _selectedAllergy,
                  onChanged: _onAllergyChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('Eggs', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Eggs',
                  groupValue: _selectedAllergy,
                  onChanged: _onAllergyChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('No allergies', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'No allergies',
                  groupValue: _selectedAllergy,
                  onChanged: _onAllergyChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
              ],
            ),
            // Meal Types Section
            SizedBox(height: 16),
            Text(
              'Meal Types',
              style: TextStyle(
                color: Color(0xFFCEFF00),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Which meals do you want to plan?',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 8),
            Column(
              children: [
                RadioListTile<String>(
                  title: Text('Breakfast', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Breakfast',
                  groupValue: _selectedMealType,
                  onChanged: _onMealTypeChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('Lunch', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Lunch',
                  groupValue: _selectedMealType,
                  onChanged: _onMealTypeChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('Dinner', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Dinner',
                  groupValue: _selectedMealType,
                  onChanged: _onMealTypeChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
                RadioListTile<String>(
                  title: Text('Snacks', style: TextStyle(color: Colors.white, fontSize: 16)),
                  value: 'Snacks',
                  groupValue: _selectedMealType,
                  onChanged: _onMealTypeChanged,
                  activeColor: Color(0xFFCEFF00),
                ),
              ],
            ),
            // Next Button
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MealPlansPage2(),
                ));
                // Add your onPressed code here!
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFCEFF00)), // Background color
                foregroundColor: MaterialStateProperty.all(Colors.black), // Text color
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
              ),
              child: Text(
                'Next',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.lime,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,size: 30),
            label: 'Home',),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_rounded,size: 30),
            label: 'Home',),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_rounded,size: 30),
            label: 'Home',),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,size: 30),
              label:'Settings' )
        ],
      ),
    );
  }
}
