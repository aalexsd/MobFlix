import 'package:alura_challenge/screens/back_end_screen.dart';
import 'package:alura_challenge/screens/front_end_screen.dart';
import 'package:alura_challenge/screens/mobile_screen.dart';
import 'package:alura_challenge/screens/registration_screen.dart';
import 'package:alura_challenge/screens/video.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  _launchURLApp() async {
    var url = Uri.parse("https://www.youtube.com/watch?v=N3h5A0oAzsk");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text(
          'MOBFLIX',
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'BebasNeue',
            color: Colors.blueAccent,
          ),
        ),
        backgroundColor: Colors.black12,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/Banner.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Center(
                  child: SizedBox(
                    width: 140,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: _launchURLApp,
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: const BorderSide(color: Colors.blue)),
                        ),
                      ),
                      child: const Text(
                        'Assista agora',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MobileScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Mobile'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FrontEndScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Front-End'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BackEndScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Back End'),
                ),
              ],
            ),
          ),
          const Video(
            category: 'Video 1',
            thumbnailUrl: 'https://i.ytimg.com/vi/MGIs7DSQ-0A/hqdefault.jpg',
            videoUrl: 'https://www.youtube.com/watch?v=MGIs7DSQ-0A',
          ),
          const Video(
              category: 'Video 2',
              thumbnailUrl: 'https://i.ytimg.com/vi/fpth65ts3cw/hqdefault.jpg',
              videoUrl: 'https://www.youtube.com/watch?v=fpth65ts3cw'),
          const Video(
              category: 'Video 3',
              thumbnailUrl: 'https://i.ytimg.com/vi/fWscDFHKgw8/hqdefault.jpg',
              videoUrl: 'https://www.youtube.com/watch?v=fWscDFHKgw8'),
          const Video(
              category: 'Video 4',
              thumbnailUrl: 'https://i.ytimg.com/vi/V0vxjhBhAWg/hqdefault.jpg',
              videoUrl: 'https://www.youtube.com/watch?v=V0vxjhBhAWg'),
          const Video(
              category: 'Video 5',
              thumbnailUrl: 'https://i.ytimg.com/vi/fiPfvylj6rk/hqdefault.jpg',
              videoUrl: 'https://www.youtube.com/watch?v=fiPfvylj6rk'),
          const Video(
              category: 'Video 6',
              thumbnailUrl: 'https://i.ytimg.com/vi/xrRy3RI3HE4/hqdefault.jpg',
              videoUrl: 'https://www.youtube.com/watch?v=xrRy3RI3HE4'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const RegisterScreen()));
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
