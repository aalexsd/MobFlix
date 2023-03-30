import 'package:alura_challenge/screens/video.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.all(10.0),
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
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        'Mobile',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Video(
              category: 'Video 1',
              thumbnailUrl: 'https://i.ytimg.com/vi/2z6f8VN_Pro/hqdefault.jpg',
              videoUrl: 'https://www.youtube.com/watch?v=2z6f8VN_Pro'),
          const Video(
              category: 'Video 2',
              thumbnailUrl: 'https://i.ytimg.com/vi/fWscDFHKgw8/hqdefault.jpg',
              videoUrl: 'https://www.youtube.com/watch?v=fWscDFHKgw8'),
          const Video(
              category: 'Video 3',
              thumbnailUrl: 'https://i.ytimg.com/vi/YhnNOTde2I0/hqdefault.jpg',
              videoUrl: 'https://www.youtube.com/watch?v=YhnNOTde2I0'),
        ],
      ),
    );
  }
}
