import 'package:blackcoffer/navbar.dart';
import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NetClan',
      home: MyHomePage(),
    );
  }
}

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        key: _scaffoldKey, // Add this key
        appBar: AppBar(
          titleSpacing: 0.0,
          leading: IconButton(
            onPressed: () {
              // Open the drawer using the scaffold's key
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.white),
          ),
          title: Text(
            'Howdy Biswayan Mazumder!!',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.blue[900],
          bottom: const TabBar(
            tabs: [
              Tab(text: "Personal"),
              Tab(text: "Business"),
              Tab(text: "Merchant"),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1600673645627-1c47394132ac?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  fit: BoxFit.cover
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 13,
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1600673645627-1c47394132ac?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    ),
                    Text(
                      'Biswayan Mazumder',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'BIDELH51o1wfh',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SimpleAnimationProgressBar(
                      height: 10,
                      width: 100,
                      backgroundColor: Colors.grey.shade500,
                      foregrondColor: Colors.white,
                      ratio: 0.2,
                      direction: Axis.horizontal,
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: const Duration(seconds: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'SOS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.person,color: Colors.purple,),
                    Text('My Profile',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 1
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.group,color: Colors.purple,),
                    Text('My Network',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(CupertinoIcons.bag,color: Colors.purple,),
                    Text('Switch To Merchant',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(CupertinoIcons.shopping_cart,color: Colors.purple,),
                    Text('Switch To Business',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(CupertinoIcons.heart,color: Colors.purple,),
                    Text('Dating',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(CupertinoIcons.circle,color: Colors.purple,),
                    Text('Matrimony',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.shopping_bag_sharp,color: Colors.purple,),
                    Text('Buy And Sell',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.shopping_bag_sharp,color: Colors.purple,),
                    Text('Jobs',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(CupertinoIcons.creditcard,color: Colors.purple,),
                    Text('Business Cards',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Text('#',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                    Text('Nutclan Groups',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.note_alt_rounded,color: Colors.purple,),
                    Text('Notes',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.add_location_alt_rounded,color: Colors.purple,),
                    Text('Live Locations',style: TextStyle(color: Colors.deepPurple),),
                  ],
                ),
                onTap: () {
                  // Handle the tap on Option 2
                },
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [Personal(), Business(), Merchant()],
        ),
      ),
    );
  }
}

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  bool invite1=false;
  bool invite2=false;
  bool invite3=false;
  bool invite4=false;
  bool invite5=false;
  bool invite6=false;
  bool invite7=false;
  bool invite8=false;
  bool invite9=false;
  bool invite10=false;
  TextEditingController _searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite1=!invite1;
                            });
                          },
                          child: invite1?Text(
                            'Pending',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1557862921-37829c790f19?q=80&w=1771&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Micheal Murphy',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Friendship | Coffee | Hangout',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Hi community! I am open to new connections.',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite2=!invite2;
                            });
                          },
                          child: invite2?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://plus.unsplash.com/premium_photo-1677553953986-a78e31a192f8?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'John Doe',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Coffee | Movies | Hobbies',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Going to Berkley, would love to share a ride\nwith someone like minded',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite3=!invite3;
                            });
                          },
                          child: invite3?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://plus.unsplash.com/premium_photo-1689266188052-704d33673e69?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jennifer',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Coffee | Web Series | Hobbies',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Going to Sanfrancisco, would love to share a ride\nwith someone like minded',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite4=!invite4;
                            });
                          },
                          child: invite4?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mateo Ramirez',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 200 m',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.2,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Dancing | Dreaming | Entrepreneur',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Passionate Colombian entrepreneur with a\nknack for turning dreams into reality.',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite5=!invite5;
                            });
                          },
                          child: invite5?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1480429370139-e0132c086e2a?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sebastian Chen',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 3 Kms',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.9,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Coffee | Movies | Hobbies',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Singaporean tech genius on a mission to\nrevolutionize the digital landscape.',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite6=!invite6;
                            });
                          },
                          child: invite6?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://plus.unsplash.com/premium_photo-1673512198691-16512bc2642e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Luka Petrov',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Serbian artist with a paintbrush as his wand,\ncreating masterpieces that capture the soul. ',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite7=!invite7;
                            });
                          },
                          child: invite7?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1664575602554-2087b04935a5?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aisha Khan',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.1,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Coffee | Movies | Hobbies',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Going to Berkley, would love to share a ride\nwith someone like minded',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  bool invite1=false;
  bool invite2=false;
  bool invite3=false;
  bool invite4=false;
  bool invite5=false;
  bool invite6=false;
  bool invite7=false;
  bool call1=false;
  bool call2=false;
  bool call3=false;
  bool call4=false;
  bool call5=false;
  bool call6=false;
  bool call7=false;
  TextEditingController _searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite1=!invite1;
                            });
                          },
                          child: invite1?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Alessio Russo',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call1?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call1=!call1;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                        color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),

                              SizedBox(width: 50),

                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Friendship | Coffee | Hangout',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Hi community! I am open to new connections.',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite2=!invite2;
                            });
                          },
                          child: invite2?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1590086782957-93c06ef21604?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Mateo Rodriguez',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call2?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call2=!call2;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Coffee | Movies | Hobbies',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Going to Berkley, would love to share a ride\nwith someone like minded',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite3=!invite3;
                            });
                          },
                          child: invite3?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://plus.unsplash.com/premium_photo-1689266188052-704d33673e69?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Jennifer',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call3?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call3=!call3;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Coffee | Web Series | Hobbies',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Going to Sanfrancisco, would love to share a ride\nwith someone like minded',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite4=!invite4;
                            });
                          },
                          child: invite4?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Mateo Ramirez',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 200 m',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call4?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call4=!call4;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.2,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Dancing | Dreaming | Entrepreneur',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Passionate Colombian entrepreneur with a\nknack for turning dreams into reality.',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite5=!invite5;
                            });
                          },
                          child: invite5?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1480429370139-e0132c086e2a?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Sebastian Chen',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 3 Kms',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call5?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call5=!call5;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.9,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Coffee | Movies | Hobbies',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Singaporean tech genius on a mission to\nrevolutionize the digital landscape.',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite6=!invite6;
                            });
                          },
                          child: invite6?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://plus.unsplash.com/premium_photo-1673512198691-16512bc2642e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Luka Petrov',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call6?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call6=!call6;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Serbian artist with a paintbrush as his wand,\ncreating masterpieces that capture the soul. ',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8.0, // Adjust top position as needed
                        right: 8.0, // Adjust right position as needed
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              invite7=!invite7;
                            });
                          },
                          child: invite7?Text(
                              'Pending',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )):Text(
                            '+Invite',
                            style: TextStyle(
                              color: Colors.greenAccent[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1664575602554-2087b04935a5?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Aisha Khan',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call7?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call7=!call7;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.1,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Coffee | Movies | Hobbies',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Going to Berkley, would love to share a ride\nwith someone like minded',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
class Merchant extends StatefulWidget {
  const Merchant({Key? key}) : super(key: key);

  @override
  State<Merchant> createState() => _MerchantState();
}

class _MerchantState extends State<Merchant> {
  bool invite1=false;
  bool invite2=false;
  bool invite3=false;
  bool invite4=false;
  bool invite5=false;
  bool invite6=false;
  bool invite7=false;
  bool call1=false;
  bool call2=false;
  bool call3=false;
  bool call4=false;
  bool call5=false;
  bool call6=false;
  bool call7=false;
  final String googleMapsUrl = 'https://maps.google.com';

  TextEditingController _searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://plus.unsplash.com/premium_photo-1663051140780-1b6de1357aa8?q=80&w=1736&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Medivic AIr Ambulance',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call1?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call1=!call1;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: ()async{
                                          if (await canLaunch(googleMapsUrl)) {
                                          await launch(googleMapsUrl);
                                          } else {
                                          throw 'Could not launch $googleMapsUrl';
                                          }
                                        }, icon: Icon(Icons.map,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),

                              SizedBox(width: 50),

                            ],
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Hi community! We have great deals.',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Ambulance Service',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1512719994953-eabf50895df7?q=80&w=1929&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Faith Cricket Club',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call2?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call2=!call2;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: ()async{
                                          if (await canLaunch(googleMapsUrl)) {
                                            await launch(googleMapsUrl);
                                          } else {
                                            throw 'Could not launch $googleMapsUrl';
                                          }
                                        }, icon: Icon(Icons.map,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Hi Community! We have good deals',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Check us out',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://plus.unsplash.com/premium_photo-1661373619731-0d4ac1774f21?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Laurels World School',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 1 Km',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call3?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call3=!call3;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: ()async{
                                          if (await canLaunch(googleMapsUrl)) {
                                            await launch(googleMapsUrl);
                                          } else {
                                            throw 'Could not launch $googleMapsUrl';
                                          }
                                        }, icon: Icon(Icons.map,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.5,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Hi community we have great for you',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Worlds School',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1522125670776-3c7abb882bc2?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Mobile Repairing Shop',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 200 m',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call4?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call4=!call4;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: ()async{
                                          if (await canLaunch(googleMapsUrl)) {
                                            await launch(googleMapsUrl);
                                          } else {
                                            throw 'Could not launch $googleMapsUrl';
                                          }
                                        }, icon: Icon(Icons.map,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.2,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Mobile Repairing',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Card(
                  elevation: 5.0,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'TGI Resorts And Hotels',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'San Francisco, within 3 Kms',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          launch("tel://1234567890");
                                        },
                                            icon: Icon(Icons.call,color: Colors.white,size: 16,)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: call5?Colors.grey:Colors.blue.shade900,
                                        child: IconButton(onPressed: (){
                                          setState(() {
                                            call5=!call5;
                                          });
                                        }, icon: Icon(Icons.notification_add_rounded,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.blue.shade900,
                                        child: IconButton(onPressed: ()async{
                                          if (await canLaunch(googleMapsUrl)) {
                                            await launch(googleMapsUrl);
                                          } else {
                                            throw 'Could not launch $googleMapsUrl';
                                          }
                                        }, icon: Icon(Icons.map,
                                          color:Colors.white,
                                          size: 16,
                                        )),
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SimpleAnimationProgressBar(
                                    height: 10,
                                    width: 100,
                                    backgroundColor: Colors.grey.shade500,
                                    foregrondColor: Colors.lightGreen.shade700,
                                    ratio: 0.9,
                                    direction: Axis.horizontal,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration: const Duration(seconds: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Hi Community! Check us out',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text('Hotels Avaliable',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),

                )

              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}



