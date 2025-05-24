import 'package:flutter/material.dart';

void main() {
  runApp(TravelAssistantApp());
}

class TravelAssistantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'India Travel Assistant',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: CitySelectionPage(),
    );
  }
}

class CitySelectionPage extends StatefulWidget {
  @override
  _CitySelectionPageState createState() => _CitySelectionPageState();
}

class _CitySelectionPageState extends State<CitySelectionPage> {
  String? selectedCity;

  final Map<String, Map<String, List<Map<String, String>>>> cityData = {
    'Delhi': {
      'Tourist Places': [
        {
          'name': 'Red Fort',
          'image':
              'https://media.istockphoto.com/id/530741074/photo/red-fort-lal-qila-with-indian-flag-delhi-india.jpg?s=612x612&w=0&k=20&c=7BTI-dgQNPPTq2yARrwIBf2yIqO4PUPX1EJY5ITIyoM='
        },
        {
          'name': 'India Gate',
          'image':
              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/42/73/a4/india-gate.jpg?w=900&h=500&s=1'
        },
        {
          'name': 'Qutub Minar',
          'image':
              'https://images.hindustantimes.com/rf/image_size_630x354/HT/p2/2019/08/28/Pictures/august-hindustan-adrija-august-illuminated-minar-mehrauli_4852eb76-c8f9-11e9-80e5-a7e5951f3eba.jpg'
        },
        {
          'name': 'Lotus Temple',
          'image':
              'https://th.bing.com/th/id/R.c7d6387ff40525457b8b7ead2d42de0d?rik=9%2bpqDVSa8JX2qQ&riu=http%3a%2f%2fworldtoptop.com%2fwp-content%2fuploads%2f2011%2f10%2fAerial-View-of-Lotus-Temple.jpg&ehk=sWgy3OaWT1ifDXdYy2CzJ%2fOp2Kk4c1%2fSyel6BYzn1Dg%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'
        },
      ],
      'Airports': [
        {
          'name': 'Indira Gandhi International Airport',
          'image':
              'https://th.bing.com/th/id/OIP.4NDN6IUXEqhZhdCeMMKOpAHaEL?cb=iwp2&rs=1&pid=ImgDetMain'
        }
      ],
      'Railway Stations': [
        {
          'name': 'New Delhi Railway Station',
          'image':
              'https://thumbs.dreamstime.com/z/delhi-india-april-new-railway-station-busiest-terms-train-frequency-passenger-movement-holds-record-largest-209608762.jpg'
        },
        {
          'name': 'Hazrat Nizamuddin',
          'image':
              'https://th.bing.com/th/id/OIP.6c3LhkDMP1jbZ8JwqeCcSAHaFj?cb=iwp2&rs=1&pid=ImgDetMain'
        }
      ],
      'Famous Food': [
        {
          'name': 'Chole Bhature',
          'image': 'https://upload.wikimedia.org/wikipedia/commons/e/e0/Chole_Bhature.jpg'
        },
        {
          'name': 'Paratha',
          'image':
              'https://static.vecteezy.com/system/resources/previews/011/396/034/non_2x/lachha-paratha-flatbread-on-brass-plate-isolated-photo.jpg'
        },
        {
          'name': 'Street Chaat',
          'image':
              'https://th.bing.com/th/id/OIP.UtsFnq52QAI3fG1Lfgo0IAHaD4?cb=iwp2&rs=1&pid=ImgDetMain'
        }
      ]
    },
    'Ahmedabad': {
  'Tourist Places': [
    {'name': 'Sabarmati Ashram', 'image': 'https://th.bing.com/th/id/OIP.k4NOt6DIi_aVvYS9RYqGOAHaE6?cb=iwp2&rs=1&pid=ImgDetMain'},
    {'name': 'Kankaria Lake', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxU-MMYsEFLEpsueATc0juJNp-dIHMRzILwA&s'},
    {'name': 'Adalaj Stepwell', 'image': 'https://www.shutterstock.com/image-photo/10-20-2007-vintage-inner-600nw-2265224923.jpg'}
  ],
  'Airports': [
    {'name': 'Sardar Vallabhbhai Patel International Airport', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7GW8jIQ7X0rqrzkrMnCD87M4PkK4aQgO7Yw&s'}
  ],
  'Railway Stations': [
    {'name': 'Ahmedabad Junction', 'image': 'https://c8.alamy.com/comp/J18N61/railway-station-ahmedabad-gujarat-india-asia-ahmedabad-junction-train-J18N61.jpg'}
  ],
'Famous Food': [
    {'name': 'Dhokla', 'image': 'https://th.bing.com/th/id/OIP.Sx7H-UCxHgSMamYu7GcS0QHaGA?cb=iwp2&rs=1&pid=ImgDetMain'},
    {'name': 'Fafda Jalebi', 'image': 'https://th.bing.com/th/id/OIP.CO2lX2mvdnPgAdkgao2p8QHaE8?cb=iwp2&rs=1&pid=ImgDetMain'}
  ]
},
  'Pune': {
  'Tourist Places': [
    {'name': 'Shaniwar Wada', 'image': 'https://th.bing.com/th/id/R.d0179915561d962303d01b27780827a2?rik=714qptRyzQIRgg&riu=http%3a%2f%2fwww.thehistoryhub.com%2fwp-content%2fuploads%2f2016%2f11%2fShaniwar-Wada.jpg&ehk=w6%2fCQzA2uNtJOvp8PixkR36x6YeFw%2fEL8dPHhvNpUU4%3d&risl=&pid=ImgRaw&r=0'},
    {'name': 'Aga Khan Palace', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjY1hlBsqwzBrY_MjY-Xohyy8iC_IT1ECGUg&s'},
    {'name': 'Sinhagad Fort', 'image': 'https://www.connectingtraveller.com/images/localtip/1632427768images%20-%202021-09-24T013751.092.jpeg'}
  ],
  'Airports': [
    {'name': 'Pune Airport', 'image': 'https://th.bing.com/th/id/OIP.9mEZ3O6lwL9PIeUWbCvHZwAAAA?cb=iwp2&rs=1&pid=ImgDetMain'}
  ],
    'Railway Stations': [
    {'name': 'Pune Junction', 'image': 'https://i.ytimg.com/vi/evHSkirzNvw/maxresdefault.jpg'}
  ],
  'Famous Food': [
    {'name': 'Misal Pav', 'image': 'https://th.bing.com/th/id/OIP.HHDz9QdhThCLI2vSwdRBRAAAAA?cb=iwp2&rs=1&pid=ImgDetMain'},
    {'name': 'Vada Pav', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWylHKI2fEbe3N8yygbSHKJ8YKKpeWx_enw&s'}
  ]
},
   'Kochi': {
  'Tourist Places': [
    {'name': 'Fort Kochi', 'image': 'https://th.bing.com/th/id/OIP.TtU0_eix2nqc1YYeJRK60QHaD2?cb=iwp2&rs=1&pid=ImgDetMain'},
    {'name': 'Chinese Fishing Nets', 'image': 'https://th.bing.com/th/id/R.ce20e12d19e61ea7b1c89f0af1209057?rik=AtbQlTvmXZn9hw&riu=http%3a%2f%2ftravel.paintedstork.com%2fblog%2fwp-content%2fuploads%2f2012%2f01%2ffort-kochi-chinese-fishing-nets.jpg&ehk=mGGon2lHbBilrPf2ijmjm0p%2fl0gTeQr%2bY8joteLqrXw%3d&risl=&pid=ImgRaw&r=0'},
    {'name': 'Mattancherry Palace', 'image': 'https://2.bp.blogspot.com/-qmqRxjuo3yE/WsHOOOfrQrI/AAAAAAAAZeQ/H8-MUVt-dIA0gajUaYwYtUOmNCxVVYa-gCLcBGAs/s1600/mattancherry-palace-kochi-head-577.jpeg'}
  ],
  'Airports': [
    {'name': 'Cochin International Airport', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRklJ8CwPuya_5sbE1tDEq-HvV7GLUW3xo6HA&s'}
  ],
   'Railway Stations': [
    {'name': 'Ernakulam Junction', 'image': 'https://th.bing.com/th/id/R.1ccce03438ac99a2cae28e057a9709b7?rik=P8FYY6dtbtSfLg&riu=http%3a%2f%2fphotos.wikimapia.org%2fp%2f00%2f02%2f13%2f08%2f13_big.jpg&ehk=qqN81O3bwuOC%2f3w7fJaPOdOoBaPygwIHgIpS8P%2b7c%2fg%3d&risl=&pid=ImgRaw&r=0'}
  ],
  'Famous Food': [
    {'name': 'Kerala Sadya', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqd-d5H0ZWGoxNEq3IJPFIfpd6BR8DzYqqzQ&s'},
    {'name': 'Appam with Stew', 'image': 'https://th.bing.com/th/id/OIP.e3aTA47UZaL29LEKRmEIOAHaKv?cb=iwp2&rs=1&pid=ImgDetMain'}
  ]
},
    'Hyderabad': {
  'Tourist Places': [
    {'name': 'Charminar', 'image': 'https://upload.wikimedia.org/wikipedia/commons/b/b7/Charminar%2C_Hyderabad.JPG'},
    {'name': 'Golconda Fort', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6bJuqOZaWWaYRBbBfKGFD0XGFHEZbPOa8Tw&s'},
    {'name': 'Hussain Sagar Lake', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO1_CFKdRomwIFvx-uzKGaDh6xflzc1r97BQ&s'}
  ],
  'Airports': [
    {'name': 'Rajiv Gandhi International Airport', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaJOoDLSyKFHqsshF0DLH3gkfolW5E_bS77A&'}
  ],
    'Railway Stations': [
    {'name': 'Secunderabad Junction', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkfTB1FIpXrcoromtQRL8fu5zcWlNIK0wEag&s'},
    {'name': 'Hyderabad Deccan', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvzzEOVOcdGMY2UEVf0HXaH_stwaFLntQvWQ&s'}
  ],
  'Famous Food': [
    {'name': 'Hyderabadi Biryani', 'image': 'https://th.bing.com/th/id/OIP.ZeOVmGGIkoMrAVId0KMmDAAAAA?cb=iwp2&rs=1&pid=ImgDetMain'},
    {'name': 'Haleem', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZRM2w8cnX5yq1TQYLO2Yv62BohLfx44sVWQ&s'}
  ]
},
   'Chennai': {
  'Tourist Places': [
    {'name': 'Marina Beach', 'image': 'https://img.staticmb.com/mbcontent/images/uploads/2022/9/Marina-Beach-Aerial-view.jpg'},
    {'name': 'Kapaleeshwarar Temple', 'image': 'https://c8.alamy.com/comp/D0JCFA/kapaleeswarar-templehindusaivite-in-mylapore-chennaimadras-tamil-naduindia-D0JCFA.jpg'},
    {'name': 'Fort St. George', 'image': 'https://narrativeby.com/wp-content/uploads/2023/09/Fort-St.-George-1024x576.webp'}
  ],
  'Airports': [
    {'name': 'Chennai International Airport', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyV8x4CM1JQwfMCypx3Y7OiOznoxaAc77KMg&s'}
  ],
   'Railway Stations': [
    {'name': 'Chennai Central', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQez7LbPFIlutO30ecg8RconfR_kJkFce4-2A&s'},
    {'name': 'Egmore Station', 'image': 'https://c8.alamy.com/comp/FFYTBN/egmore-railway-station-in-madras-chennai-tamil-nadu-india-FFYTBN.jpg'}
  ],
  'Famous Food': [
    {'name': 'Dosa', 'image': 'https://th.bing.com/th/id/OIP.iewXlt-r6IOnM8Tz4JF6yQHaEW?cb=iwp2&rs=1&pid=ImgDetMain'},
    {'name': 'Sambar Idli', 'image': 'https://th.bing.com/th/id/OIP.KolKVqx_2G-fEOIDk_upHgHaLH?cb=iwp2&rs=1&pid=ImgDetMain'}
  ]
},
   'Mumbai': {
  'Tourist Places': [
    {'name': 'Gateway of India', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtZmCX_SlTGb48361Cxp5fRYaMKOYfhaZBgg&s'},
    {'name': 'Marine Drive', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1pxe8vkKTt3WMVvUY7d9iPHNPkPqkuuyN6Q&s'},
    {'name': 'Elephanta Caves', 'image': 'https://th.bing.com/th/id/OIP.InQ1ACZrE8dTeCrXHopx4AHaEK?cb=iwp2&rs=1&pid=ImgDetMain'}
  ],
  'Airports': [
    {'name': 'Chhatrapati Shivaji Maharaj International Airport', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTYgFeFxdgZAyC3M8DnHgt5I1shYUknq8dvA&s'}
  ],
  'Railway Stations': [
    {'name': 'Chhatrapati Shivaji Terminus (CST)', 'image': 'https://th.bing.com/th/id/OIP.V9UC5bZ2HQQ0_YXEeiJDmAHaE8?cb=iwp2&rs=1&pid=ImgDetMain'},
    {'name': 'Dadar', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRag-KBEwWWIPWN-ZCPScaVuSP17w8jPwZQig&s'}
  ],
   'Famous Food': [
    {'name': 'Vada Pav', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWylHKI2fEbe3N8yygbSHKJ8YKKpeWx_enw&s'},
    {'name': 'Pav Bhaji', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdSfXqaZswrvwPS32dG3CHQpJVSCTCa5VwPg&s'}
  ]
},
   'Kashmir': {
  'Tourist Places': [
    {'name': 'Dal Lake', 'image': 'https://as1.ftcdn.net/v2/jpg/04/37/91/72/1000_F_437917209_fZPcDkpnEpZJ2oWFpNbqYATQ39UJFcZl.jpg'},
    {'name': 'Gulmarg', 'image': 'https://th.bing.com/th/id/OIP.U2epJau-SwblG8K_5ICQDAHaE8?cb=iwp2&rs=1&pid=ImgDetMain'},
    {'name': 'Pahalgam', 'image': 'https://www.ekashmirtourism.com/wp-content/uploads/2022/08/Baisaran-Valley-pahalgam.jpg'}
  ],
  'Airports': [
    {'name': 'Sheikh ul-Alam International Airport (Srinagar)', 'image': 'https://freepresskashmir.news/wp-content/uploads/2023/01/Apron_view_at_Srinagar_International_Airport.jpg'}
  ],
  'Railway Stations': [
    {'name': 'Srinagar Railway Station', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHFHlGEE332k6jx3aSiyQYM7mW1hRzT8vaMg&s'}
  ],
   'Famous Food': [
    {'name': 'Rogan Josh', 'image': 'https://th.bing.com/th/id/R.22003c1631159f2c31b3253c5434ec76?rik=Ttc4r89KIs0OOw&riu=http%3a%2f%2fwww.archanaskitchen.com%2fimages%2farchanaskitchen%2f1-Author%2fShaheen_Ali%2fKashmiri_Rogan_Josh.jpg&ehk=eG9ODF%2bJfnqfWKoCEJ%2bYDPalZKPPlpdB4C05qSpuy7o%3d&risl=&pid=ImgRaw&r=0'},
    {'name': 'Kashmiri Kahwa', 'image': 'https://www.vegrecipesofindia.com/wp-content/uploads/2019/07/kahwa-recipe.jpg'}
  ]
},


    // Other cities omitted for brevity — use your full map here
    };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('India Travel Assistant')),
      body: Container(
        color: Color.fromARGB(207, 12, 2, 149), // light pink background color
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: selectedCity,
              hint: Text(
                "Select an Indian City",
                style: TextStyle(fontSize: 12),
              ),
              items: cityData.keys.map((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(
                    city,
                    style: TextStyle(fontSize: 15),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),
            SizedBox(height: 30),
            if (selectedCity != null)
              Expanded(
                child: ListView(
                  children: cityData[selectedCity!]!.entries.map((entry) {
                    return ExpansionTile(
                      title: Text(
                        entry.key,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      children: entry.value
                          .map((item) => PlaceTile(
                                name: item['name']!,
                                imageUrl: item['image']!,
                                fontSize: 12,
                              ))
                          .toList(),
                    );
                  }).toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

ListView({required List<ExpansionTile> children}) {
}

class PlaceTile extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double fontSize;

  const PlaceTile({
    required this.name,
    required this.imageUrl,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) =>
              Icon(Icons.image_not_supported, size: 60),
        ),
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
