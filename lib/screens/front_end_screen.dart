import 'package:alura_challenge/screens/video.dart';
import 'package:flutter/material.dart';

class FrontEndScreen extends StatelessWidget {
  const FrontEndScreen({Key? key}) : super(key: key);

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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categoria: ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        'Front End',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
              const Video(
                  category: 'Video 1',
                  thumbnailUrl:
                      'https://i.ytimg.com/vi/V0vxjhBhAWg/hqdefault.jpg',
                  videoUrl: 'https://www.youtube.com/watch?v=V0vxjhBhAWg'),
              const Video(
                  category: 'Video 2',
                  thumbnailUrl:
                      'https://i.ytimg.com/vi/fpth65ts3cw/hqdefault.jpg',
                  videoUrl: 'https://www.youtube.com/watch?v=fpth65ts3cw'),
              const Video(
                  category: 'Video 3',
                  thumbnailUrl:
                      'https://i.ytimg.com/vi/ZY3-MFxVdEw/hqdefault.jpg',
                  videoUrl: 'https://www.youtube.com/watch?v=ZY3-MFxVdEw'),
            ],
          )
        ],
      ),
    );
  }
}
