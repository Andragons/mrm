// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class HistoryView extends StatelessWidget {
//   Future<void> _launchURL() async {
//     const url = 'http://34.126.119.142/detection';
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
//         child: ElevatedButton(
//           onPressed: _launchURL,
//           child: Text('Go to Detection'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HistoryView extends StatelessWidget {
  final String apiUrl = "http://192.168.1.9:5000/movie";

  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    print(result.body);
    return json.decode(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar GET HTTP'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      // leading: CircleAvatar(
                      //   radius: 30,
                      //   backgroundImage:
                      //       NetworkImage(snapshot.data[index]['avatar']),
                      // ),
                      title: Text(snapshot.data[index]['emotion']),
                      subtitle:
                          Text(snapshot.data[index]['timestamp'].toString()),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
