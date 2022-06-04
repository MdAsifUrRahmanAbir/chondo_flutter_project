import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: SizedBox(
            width: double.infinity,
            // Define Webview Widget
            child: WebView(
              initialUrl: 'https://www.youtube.com/channel/UCJ3sW_6kBDZqDRGAqPQg8NA',
              // Enable Javascript on WebView
              javascriptMode: JavascriptMode.unrestricted,
            )),
      ),
    );
  }
}
