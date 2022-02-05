import 'package:flutter/material.dart';

void main() => runApp(Profile());

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Profil'),
            backgroundColor: Colors.black12,
          ),
          body:  SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Image.asset('assets/bgprofil.jpg'),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'GeForce RTX™ 3090 SUPRIM X 24G',
                      style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "The GeForce RTX™ 3090 is a big ferocious GPU (BFGPU) with TITAN class performance. It's powered by Ampere—NVIDIA's 2nd gen RTX architecture doubling on ray tracing and AI performance with enhanced RT Cores, Tensor Cores, and new streaming multiprocess",
                      style: TextStyle(fontSize: 12, fontFamily: "Serif", height: 2.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Overview',
                          style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Image.asset('assets/profile1.jpg')),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Built upon two decades of award-winning graphics cards, the time to evolve beyond Gaming has come. A new design philosophy takes shape to pave the way for a new prestigious series. Zero Frozr is the calm before the storm.',
                          style: TextStyle(fontSize: 14, fontFamily: "Serif", height: 2.0),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Specification',
                          style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Card(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(
                                6.0,
                              ),
                              child: Image.asset('assets/profile2.jpg',
                                height: 100,
                                width: 100,),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Text('Card Dimension : 336 mm x 140 mm x 61 mm Weight Graphics Card / Package : 1895 g / 3197 g DirectX Version SUpport : 12 API OpenGL Version Support : 4.6',
                                  textAlign: TextAlign.center,
                                softWrap: true,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(
                                6.0,
                              ),
                              child: Image.asset('assets/profile3.jpg',
                                height: 100,
                                width: 100,),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Text('Output : 3x DisplayPort (v1.4a) | 1x HDMI (Supports 4K@120Hz as specified in HDMI 2.1) HDCP Support : Y 2.2 Power Consumption= 420 W Power Connectors : 3x 8 Pin Recomended PSU : 850 W',
                                  textAlign: TextAlign.center,
                                  softWrap: true,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(
                                6.0,
                              ),
                              child: Image.asset('assets/profile4.jpg',
                                height: 100,
                                width: 100,),
                            ),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Text('Cores : 10496 Units Core Clock : Extreme Performance: 1875 MHz (Dragon Center) | Boost: 1860 MHz (GAMING & SILENT Mode) Memory Speed : 19.5 Gbps Memory : 24GB GDDR6X Memory Bus : 384-bit',
                                  textAlign: TextAlign.center,
                                  softWrap: true,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]
            ),
          )
      ),
    );
  }
}