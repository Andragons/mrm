// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class HomeView extends StatelessWidget {
//   Future<void> _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Detection View'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () => _launchURL('http://34.126.119.142/detection'),
//               child: Text('Detection Online'),
//             ),
//             ElevatedButton(
//               onPressed: () => _launchURL('http://10.0.0.51:5000/detection'),
//               child: Text('Detection Local'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  final String url = 'http://192.168.149.15:5000/detection';

  Future<void> _launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URL Launcher'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Buka URL'),
          onPressed: _launchURL,
        ),
      ),
    );
  }
}
