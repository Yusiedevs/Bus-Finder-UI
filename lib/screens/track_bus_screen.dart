import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackBusScreen extends StatefulWidget {
  const TrackBusScreen({Key? key}) : super(key: key);

  @override
  State<TrackBusScreen> createState() => _TrackBusScreenState();
}

class _TrackBusScreenState extends State<TrackBusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          children: [
            SizedBox(height: 70,),
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(
                  FontAwesomeIcons.circle,
                  color: Colors.blue,
                ),
                hintText: 'Near UET Mardan Main Road',
                hintStyle: TextStyle(
                    color: Colors.grey.shade500,
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
          ],
        ),
      ),
    );
  }
}