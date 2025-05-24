import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;

  void toggleTheme(bool value) {
    setState(() => isDarkTheme = value);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'India Travel Info',
      theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      home: LoginPage(toggleTheme: toggleTheme, isDarkTheme: isDarkTheme),
    );
  }
}

class LoginPage extends StatefulWidget {
  final Function(bool) toggleTheme;
  final bool isDarkTheme;

  LoginPage({required this.toggleTheme, required this.isDarkTheme});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => CityListScreen(
          toggleTheme: widget.toggleTheme,
          isDarkTheme: widget.isDarkTheme,
        ),
      ),
    );
  }

  void _goToSignup() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignupPage()),
    );
  }

  Widget _socialButton(String text, IconData icon, Color color) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: Colors.white),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(double.infinity, 40),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to India Travel App',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(onPressed: _login, child: Text('Login')),
            SizedBox(height: 12),
            _socialButton('Login with Google', Icons.g_mobiledata, Colors.red),
            SizedBox(height: 8),
            _socialButton('Login with Facebook', Icons.facebook, Colors.blue),
            TextButton(onPressed: _goToSignup, child: Text('Create Account')),
          ],
        ),
      ),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _newUsernameController = TextEditingController();
  final _newPasswordController = TextEditingController();

  void _signup() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Account')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _newUsernameController,
              decoration: InputDecoration(labelText: 'New Username'),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _newPasswordController,
              decoration: InputDecoration(labelText: 'New Password'),
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(onPressed: _signup, child: Text('Sign Up')),
          ],
        ),
      ),
    );
  }
}

class CityListScreen extends StatefulWidget {
  final Function(bool) toggleTheme;
  final bool isDarkTheme;

  CityListScreen({required this.toggleTheme, required this.isDarkTheme});

  @override
  _CityListScreenState createState() => _CityListScreenState();
}

class _CityListScreenState extends State<CityListScreen> {
  final Map<String, dynamic> indianCitiesData = {
  'Delhi': {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxpAwSRYBrM--zDxopocNPBKkGPChEaGFegA&s',
    'touristPlaces': [
      {
        'name': 'Red Fort',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSSjG1bBqwJMC6oMCuwkl00RHcu_5d4z-rlw&s'
      },
      {
        'name': 'India Gate',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWozoUT-H1zLANPW_u6IVEnz6VOsBn7oIELg&s'
      },
    ],
    'airports': ['Indira Gandhi International Airport'],
    'railwayStations': ['New Delhi', 'Old Delhi'],
    'famousFoods': ['Chaat', 'Butter Chicken', 'Paranthas'],
  },
  'Mumbai': {
    'image':
        'https://www.andbeyond.com/wp-content/uploads/sites/5/Chhatrapati-Shivaji-Terminus-railway-station-mumbai.jpg',
    'touristPlaces': [
      {
        'name': 'Gateway of India',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtZmCX_SlTGb48361Cxp5fRYaMKOYfhaZBgg&s'
      },
      {
        'name': 'Marine Drive',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1pxe8vkKTt3WMVvUY7d9iPHNPkPqkuuyN6Q&s2'
      },
    ],
    'airports': ['Chhatrapati Shivaji Maharaj International Airport'],
    'railwayStations': ['Chhatrapati Shivaji Terminus', 'Dadar', 'Bandra'],
    'famousFoods': ['Vada Pav', 'Pav Bhaji', 'Bhel Puri'],
  },
  'Kolkata': {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRt-kwAEGoXypRWLrgkQgf2fBboQ7GoQhU_Q&s',
    'touristPlaces': [
      {
        'name': 'Victoria Memorial',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoEzYVZ_BCRukoSyDvTLydrnWIX3ig79gMt4IFTfI_OLuh9qWNkfsnXNsC8ooA-BDFGU&usqp=CAU'
      },
      {
        'name': 'Howrah Bridge',
        'image':
            'https://t3.ftcdn.net/jpg/05/13/90/60/360_F_513906092_d8lNk5eccxrZV1ol4KxPzSLFhMtSt3wa.jpg'
      },
    ],
    'airports': ['Netaji Subhas Chandra Bose International Airport'],
    'railwayStations': ['Howrah Junction', 'Sealdah'],
    'famousFoods': ['Rosogolla', 'Mishti Doi', 'Kathi Roll'],
  },
  'Chennai': {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFkc8shuAfmfrNvRohXY_CQGpriVKOOzKJrg&s',
    'touristPlaces': [
      {
        'name': 'Marina Beach',
        'image':
            'https://img.staticmb.com/mbcontent/images/uploads/2022/9/Marina-Beach-Aerial-view.jpg'
      },
      {
        'name': 'Fort St. George',
        'image':
            'https://narrativeby.com/wp-content/uploads/2023/09/Fort-St.-George-1024x576.webp'
      },
    ],
    'airports': ['Chennai International Airport'],
    'railwayStations': ['Chennai Central', 'Chennai Egmore'],
    'famousFoods': ['Idli', 'Dosa', 'Filter Coffee'],
  },
  'Bengaluru': {
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr3PFUBCG-MiP74_3TVAUzyZ9NW4uv9paGXQ&s',
    'touristPlaces': [
      {
        'name': 'Lalbagh Botanical Garden',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo2Wi_feXjfJ4gsEabN6EnQyEsbLltJ2UB0Q&s'
      },
      {
        'name': 'Bangalore Palace',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVq4m5Xw5G1dQVh4RfuMSbU8iwsVqnbWGhAA&s'
      },
    ],
    'airports': ['Kempegowda International Airport'],
    'railwayStations': ['Bangalore City Railway Station'],
    'famousFoods': ['Bisi Bele Bath', 'Mysore Pak', 'Dosa'],
  },
};

     
    // Add more cities if needed
  

  String _searchQuery = '';

  Widget _buildSection(String title, List<Widget> items) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange)),
          SizedBox(height: 6),
          ...items,
        ],
      ),
    );
  }

  void _showSimpleDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Close')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredCities = indianCitiesData.entries.where((entry) =>

        entry.key.toLowerCase().contains(_searchQuery.toLowerCase()));

    return Scaffold(
      appBar: AppBar(
        title: Text('Indian Cities Travel Info'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () => _showSimpleDialog(
              'Profile',
              'User: Traveler\nLanguages: हिंदी, தமிழ், বাংলা, ಕನ್ನಡ, English, తెలుగు',
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepOrange),
              child: Text('Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () => _showSimpleDialog('About Us',
                  'This app provides travel information for Indian cities.'),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy Policy'),
              onTap: () => _showSimpleDialog('Privacy Policy',
                  'Your data is handled securely and not shared with third parties.'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () => _showSimpleDialog(
                  'Help', 'For assistance, email us at support@indiatravel.com'),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact Us'),
              onTap: () => _showSimpleDialog(
                  'Contact Us', 'Email: contact@indiatravel.com\nPhone: +91-1234567890'),
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Terms and Conditions'),
              onTap: () => _showSimpleDialog(
                  'Terms and Conditions',
                  'By using this app, you agree to the terms and conditions.'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(
                      toggleTheme: widget.toggleTheme,
                      isDarkTheme: widget.isDarkTheme,
                    ),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => LoginPage(
                    toggleTheme: widget.toggleTheme,
                    isDarkTheme: widget.isDarkTheme,
                  )),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Search city',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder()),
              onChanged: (value) => setState(() => _searchQuery = value),
            ),
          ),
          Expanded(
            child: ListView(
              children: filteredCities.map((entry) {
                final cityName = entry.key;
                final city = entry.value;

                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  elevation: 6,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cityName,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            city['image'] as String,
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(
                              height: 180,
                              color: Colors.grey[300],
                              alignment: Alignment.center,
                              child: Icon(Icons.broken_image,
                                  size: 80, color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        _buildSection(
                          'Tourist Places',
                          (city['touristPlaces'] as List).map<Widget>((place) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.network(
                                      place['image'],
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                      errorBuilder: (_, __, ___) => Container(
                                        height: 60,
                                        width: 60,
                                        color: Colors.grey[300],
                                        alignment: Alignment.center,
                                        child: Icon(Icons.broken_image,
                                            size: 30, color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Text(place['name'],
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        _buildSection(
                          'Airports',
                          (city['airports'] as List)
                              .map<Widget>((airport) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 2),
                                    child: Text('• $airport',
                                        style: TextStyle(fontSize: 16)),
                                  ))
                              .toList(),
                        ),
                        _buildSection(
                          'Railway Stations',
                          (city['railwayStations'] as List)
                              .map<Widget>((station) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 2),
                                    child: Text('• $station',
                                        style: TextStyle(fontSize: 16)),
                                  ))
                              .toList(),
                        ),
                        _buildSection(
                          'Famous Foods',
                          (city['famousFoods'] as List)
                              .map<Widget>((food) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 2),
                                    child: Text('• $food',
                                        style: TextStyle(fontSize: 16)),
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

mixin cityData {
  var entries;
}

class SettingsPage extends StatefulWidget {
  final Function(bool) toggleTheme;
  final bool isDarkTheme;

  SettingsPage({required this.toggleTheme, required this.isDarkTheme});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SwitchListTile(
            title: Text('Dark Theme'),
            value: widget.isDarkTheme,
            onChanged: (val) {
              widget.toggleTheme(val);
              setState(() {});
            },
          ),
          SizedBox(height: 12),
          Text('Choose Language',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          DropdownButton<String>(
            value: _selectedLanguage,
            onChanged: (String? value) {
              setState(() {
                _selectedLanguage = value!;
              });
            },
            items: [
              'English',
              'हिंदी',
              'தமிழ்',
              'বাংলা',
              'ಕನ್ನಡ',
              'తెలుగు',
            ].map<DropdownMenuItem<String>>((lang) {
              return DropdownMenuItem<String>(
                value: lang,
                child: Text(lang),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Divider(),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('App Privacy'),
            subtitle: Text(
                'Your personal data is kept confidential and never shared.'),
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security'),
            subtitle: Text(
                'This app uses secure login and data encryption techniques.'),
          ),
        ],
      ),
    );
  }
}
