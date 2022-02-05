import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uas_pemweb/model/ProfilData.dart';
import 'package:uas_pemweb/services/service.dart';

class ProfilTab extends StatefulWidget {
  const ProfilTab({Key? key}) : super(key: key);

  @override
  _ProfilTabState createState() => _ProfilTabState();
}

class _ProfilTabState extends State<ProfilTab> {
  final Service _Service = Service();

  Future<List<ProfilData>> _getAllProfil() async {
    var result = await _Service.getAllProfil();
    List<ProfilData>? _list = <ProfilData>[];

    if (result != null) {
      // ignore: prefer_typing_uninitialized_variables
      var profilPosts;
      profilPosts = json.decode(result.body);
      print(profilPosts);

      profilPosts.forEach((profilPost) {
        var model = ProfilData();
        model.Nama = profilPost['Nama'];
        model.Keterangan = profilPost['Keterangan'];
        model.Gambar = profilPost['Gambar'];
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
    _getAllProfil();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _getAllProfil(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ProfilData>> snapshot) {
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
                          child: Text('${snapshot.data![index].Keterangan}'),
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
