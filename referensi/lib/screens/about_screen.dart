import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uas_pemweb/model/AboutData.dart';
import 'package:uas_pemweb/services/service.dart';

class AboutTab extends StatefulWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  _AboutTabState createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  // ignore: non_constant_identifier_names
  final Service _Service = Service();

  Future<List<AboutData>> _getAllAbout() async {
    var result = await _Service.getAllAbout();
    List<AboutData>? _list = <AboutData>[];

    if (result != null) {
      // ignore: prefer_typing_uninitialized_variables
      var aboutPosts;
      aboutPosts = json.decode(result.body);
      print(aboutPosts);

      aboutPosts.forEach((aboutPost) {
        var model = AboutData();
        model.Nama = aboutPost['Nama'];
        model.Detail = aboutPost['Detail'];
        model.Gambar = aboutPost['Gambar'];
        if (!mounted) return;
        setState(() {
          _list.add(model);
        });
      });
    }

    return _list;
  }

  @override
  void initState() {
    _getAllAbout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _getAllAbout(),
        builder:
            (BuildContext context, AsyncSnapshot<List<AboutData>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(
                    8.0,
                  ),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //beri padding
                        Padding(
                          padding: const EdgeInsets.all(
                            6.0,
                          ),
                          child: Image.asset(
                            'img/${snapshot.data![index].Gambar}',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('${snapshot.data![index].Nama}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text('${snapshot.data![index].Detail}'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Container(
                child: Text(
                  'Loading ..',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
