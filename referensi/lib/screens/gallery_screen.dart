import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uas_pemweb/model/GalleryData.dart';
import 'package:uas_pemweb/services/service.dart';

class GalleryTab extends StatefulWidget {
  const GalleryTab({Key? key}) : super(key: key);

  @override
  _GalleryTabState createState() => _GalleryTabState();
}

class _GalleryTabState extends State<GalleryTab> {
  // ignore: non_constant_identifier_names
  final Service _Service = Service();

  Future<List<GalleryData>> _getAllGallery() async {
    var result = await _Service.getAllGallery();
    List<GalleryData>? _list = <GalleryData>[];

    if (result != null) {
      // ignore: prefer_typing_uninitialized_variables
      var galleryPosts;
      galleryPosts = json.decode(result.body);
      print(galleryPosts);

      galleryPosts.forEach((galleryPost) {
        var model = GalleryData();
        model.Nama = galleryPost['Nama'];
        model.Gambar = galleryPost['Gambar'];
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
    _getAllGallery();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _getAllGallery(),
        builder:
            (BuildContext context, AsyncSnapshot<List<GalleryData>> snapshot) {
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
