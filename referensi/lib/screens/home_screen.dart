import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uas_pemweb/model/homedata.dart';
import 'package:uas_pemweb/services/service.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  // ignore: non_constant_identifier_names
  final Service _Service = Service();

  Future<List<HomeData>> _getAllHome() async {
    var result = await _Service.getAllHome();
    List<HomeData>? _list = <HomeData>[];

    if (result != null) {
      var homePosts;
      homePosts = json.decode(result.body);

      homePosts.forEach((homePost) {
        var model = HomeData();
        model.Nama = homePost['Nama'];
        model.Keterangan = homePost['Keterangan'];
        model.Gambar = homePost['Gambar'];
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
    _getAllHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _getAllHome(),
        builder:
            (BuildContext context, AsyncSnapshot<List<HomeData>> snapshot) {
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

class Isi extends StatelessWidget {
  const Isi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            Center(child: Text('Ini Adalah Halaman Home Angga')),
          ],
        ),
      ),
    );
  }
}
