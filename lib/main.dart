import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Alignment',
      home: Scaffold(
        backgroundColor: const Color(0xFFFFF7FF),
        body: SafeArea(
          child: Column(
            children: [
              // Nama kota
              const Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 45),
                  child: Text(
                    'Malang',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              // Suhu
              const Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '25°',
                    style: TextStyle(
                      fontSize: 78,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              // Perkiraan cuaca
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Minggu',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.sunny,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(height: 8),
                        Text(
                          '20°C',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        Text(
                          'Senin',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.cloudy_snowing,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(height: 8),
                        Text(
                          '23°C',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        Text(
                          'Selasa',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.cloud,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(height: 8),
                        Text(
                          '22°C',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}