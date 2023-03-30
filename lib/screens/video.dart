import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Video extends StatefulWidget {
  final String category;
  final String thumbnailUrl;
  final String videoUrl;

  const Video(
      {required this.category,
      required this.thumbnailUrl,
      required this.videoUrl,
      Key? key})
      : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Container(
          height: 300,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(5)),
          child: GestureDetector(
            onTap: () {
              launchUrl(Uri.parse(widget.videoUrl));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                widget.thumbnailUrl,
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
