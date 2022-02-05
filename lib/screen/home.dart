import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beranda',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Beranda'),
            backgroundColor: Colors.black12,
          ),
          body:  SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Image.asset('assets/bgberanda.jpg'),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Real Sensation in Gaming Experience',
                      style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Column(
                    children: [
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(
                                6.0,
                              ),
                              child: Image.asset('assets/beranda1.jpg',
                                height: 200,
                                width: 200,),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text('Boost Clock / Memory Speed',
                                style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue,),
                                textAlign: TextAlign.center,),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text('1860 MHz (GAMING & SILENT Mode) / 19.5 Gbps - 24GB GDDR6X - DisplayPort x 3 (v1.4a) - HDMI x 1 (Supports 4K@120Hz as specified in HDMI 2.1) - Features a staggering 24 GB of G6X memory, all to deliver the ultimate gaming experience',
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(
                                6.0,
                              ),
                              child: Image.asset('assets/beranda2.jpg',
                                height: 200,
                                width: 200,),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text('TRI FROZR 2S Thermal Design',
                                style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue,),
                                textAlign: TextAlign.center,),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text('A masterpiece of teamwork, fan blades work in pairs to create unprecedented levels of focused air pressure - Precision-machined heat pipes ensure max contact to the GPU and spread heat along the full length of the heatsink',
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(
                                6.0,
                              ),
                              child: Image.asset('assets/beranda3.jpg',
                                height: 200,
                                width: 200,),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text('Full Support',
                                style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue,),
                                textAlign: TextAlign.center,),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text('Dual BIOS gives you the choice to prioritize for full performance in GAMING mode or low noise in SILENT mode - The exclusive MSI Center software lets you monitor, tweak and optimize MSI products in real-time - Controls lighting for both MSI and compatible',
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Special Features',
                      style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CarouselSlider(
                    items:  [
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text('VIP Cooling Treatment',
                              style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue,),
                              textAlign: TextAlign.center,),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text('Dedication yields results. The memory modules get the private treatment with their own dedicated close quarters heatpipe that runs to dedicated heatsink. NEVER LOSE YOUR COOLTRI FROZR 2S stays cool in style. Thermals are kept in check in masterful ways.',
                              textAlign: TextAlign.center,),
                          ),
                        ]
                      ),
                      Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text('Symphony Silent Design',
                                style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue,),
                                textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text("Don't sweat it, Airflow Control guides the air to exactly where it needs to be for maximum cooling. Deflectors provide additional surface area and guide air to where it’s needed for maximum cooling.",
                                textAlign: TextAlign.center,),
                            ),
                          ]
                      ),
                      Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text('Hardened Defenses',
                                style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue,),
                                textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text("Additional fuses built into the custom PCB provide additional safeguards against electrical damage. A thickened copper layer inside the PCB increases conductivity which improves heat dissipation and high-performance reliability",
                                textAlign: TextAlign.center,),
                            ),
                          ]
                      ),
                      Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text('Frozen in Place',
                                style: TextStyle(fontSize: 18, fontFamily: "Serif", height: 2.0, color: Colors.blue,),
                                textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text("Zero Frozr is the calm before the storm. The fans completely stop when temperatures are relatively low, eliminating all noise when active cooling is unneeded. The fans will automatically start spinning again when the heat is on during gaming.",
                                textAlign: TextAlign.center,),
                            ),
                          ]
                      ),
                    ],
                    //Slider Container properties
                    options: CarouselOptions(
                      autoPlay: true,
                    ),
                  ),
                ]
            ),
          )
      ),
    );
  }
}