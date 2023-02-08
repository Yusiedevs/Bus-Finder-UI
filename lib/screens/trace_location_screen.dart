import 'package:bus_app/constants/constants.dart';
import 'package:bus_app/screens/track_bus_screen.dart';
import 'package:bus_app/services/get_location.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TraceLocationScreen extends StatefulWidget {
  const TraceLocationScreen({Key? key}) : super(key: key);

  @override
  State<TraceLocationScreen> createState() => _TraceLocationScreenState();
}

class _TraceLocationScreenState extends State<TraceLocationScreen> {

 GetLocation getLocation = GetLocation();
Drawer drawerr = Drawer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: kMainColor,
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    'images/avatar.png',
                  ),
                  backgroundColor: kMainColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Azad Wazir',
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      'User ID',
                      style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
                    ),
                  ),
                ),
                const Divider(
                  height: 50,
                  color: Colors.white,
                  thickness: 1,
                ),
                Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.bus,
                      size: 35,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'All Buses',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.bell,
                      size: 35,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Notification',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.route,
                      size: 35,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Routes',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.gear,
                      size: 35,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Setting',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.solidCircleQuestion,
                      size: 35,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Help',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  size: 50,
                ),
                color: Colors.white,
              ),
              const SizedBox(height: 50),
               InkWell(
                 onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const TrackBusScreen();
                  }));
                 },
                 child: const Text(
                  'Trace Location',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
              ),
               ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  prefixIcon: const Icon(
                    FontAwesomeIcons.circle,
                    color: Colors.blue,
                  ),
                  hintText: 'Enter your current location...',
                  hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade500),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Stack(
                fit: StackFit.passthrough,
                children: [
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'Application requires access to your location',
                            style: TextStyle(
                                fontSize: 25, color: Colors.grey.shade600),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Enable location services for a more accurate pickup experience',
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 30,
                    right: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          getLocation.getLocation();
                        });
                      },
                      child: const Text(
                        'Turn on location services',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}