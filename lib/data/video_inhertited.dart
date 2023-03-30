import 'package:alura_challenge/screens/video.dart';
import 'package:flutter/material.dart';

class VideoInherited extends InheritedWidget {
  VideoInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Video> videoList = [
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
  ];

  void newVideo(String url, String category, String thumb) {
    videoList
        .add(Video(category: category, thumbnailUrl: thumb, videoUrl: url));
  }

  static VideoInherited of(BuildContext context) {
    final VideoInherited? result =
        context.dependOnInheritedWidgetOfExactType<VideoInherited>();
    assert(result != null, 'No VideoInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(VideoInherited oldWidget) {
    return oldWidget.videoList.length != videoList.length;
  }
}
