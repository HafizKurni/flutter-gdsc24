import 'package:flutter/material.dart';
import 'package:game_list/page/home.dart';
// Import the HomePage

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 1; // Assuming Profile is at index 1

  void _onItemTapped(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
      if (index == 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://instagram.fplm2-1.fna.fbcdn.net/v/t51.2885-19/334619665_637942514807200_5390481856925294953_n.jpg?_nc_ht=instagram.fplm2-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=2z9b05R2x30Q7kNvgHfQmIK&edm=AEhyXUkBAAAA&ccb=7-5&oh=00_AYB7f5pFWapc6GsaakR6bCGX_aF68-eus7cPPJd-L_X9sw&oe=66A56F96&_nc_sid=8f1549'),
            ),
            SizedBox(height: 20),
            Text(
              'Hafiz Muhammad Kurniawan',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Mobile Development',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'GDSC 23/24',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
            // Your existing widgets
          ],
        ),
      ),
    );
  }
}
